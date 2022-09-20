import asdl
import pglast
import pprint
import functools

from src.grammar.class_generator import ASDL2Class
from pglast import stream

asdl_class = ASDL2Class("./src/grammar/ratsql.asdl")()

Agg_indices = ["none", "max", "min", "count", "sum", "avg"]

# Aggregation function mapping
AGG_FUNC_STR_TO_AST = {
    "none": asdl_class.NoneAggOp,
    "max": asdl_class.Max,
    "min": asdl_class.Min,
    "count": asdl_class.Count,
    "sum": asdl_class.Sum,
    "avg": asdl_class.Avg
}
AGG_FUNC_AST_TO_STR = {value: key for key, value in AGG_FUNC_STR_TO_AST.items()}

# Join type mapping
JOIN_TYPE_PG_TO_AST = {
    pglast.enums.nodes.JoinType.JOIN_INNER: asdl_class.INNER_JOIN,
    pglast.enums.nodes.JoinType.JOIN_LEFT: asdl_class.LEFT_OUTER_JOIN,
    pglast.enums.nodes.JoinType.JOIN_RIGHT: asdl_class.RIGHT_OUTER_JOIN,
    pglast.enums.nodes.JoinType.JOIN_FULL: asdl_class.FULL_OUTER_JOIN,
}
JOIN_TYPE_AST_TO_PG = {val: key for key, val in JOIN_TYPE_PG_TO_AST.items()}
JOIN_TYPE_AST_TO_PG.update({asdl_class.CROSS_JOIN: pglast.enums.nodes.JoinType.JOIN_INNER})
JOIN_TYPE_AST_TO_PG.update({asdl_class.NATURAL_JOIN: pglast.enums.nodes.JoinType.JOIN_INNER})



dummy_location = 0

class VisitorBase(object):
    """Generic tree visitor for ASTs."""
    def __init__(self):
        self.cache = {}

    def visit(self, obj, *args):
        if obj == None:
            return None
        # if isinstance(obj, list) or isinstance(obj, tuple):
        #     return [self.visit(o, *args) for o in obj]
        def find_corresponding_method(klass):
            # Find method that corresponds to the given object
            methname = "visit_" + klass.__name__
            meth = getattr(self, methname, None)
            if meth is None:
                # Find method that corresponds to the given object superclass
                methname = "visit_" + klass.__bases__[0].__name__
                meth = getattr(self, methname, None)
            if meth is None:
                # Raise error if no method found
                raise NotImplementedError("No method for %s" % klass)
            return meth
        klass = obj.__class__
        meth = self.cache.get(klass)
        if meth is None:
            meth = find_corresponding_method(klass)
        self.cache[klass] = meth
        # Call the corresponding method
        return meth(obj, *args)

class ParseTreeVisitorBase(VisitorBase):
    def visit(self, obj, *args):
        if type(obj) in [list, tuple]:
            return [super(ParseTreeVisitorBase, self).visit(o, *args) for o in obj]
        return super().visit(obj, *args)

class ASTVisitorBase(VisitorBase):
    def visit(self, obj, *args):
        if isinstance(obj, list) or isinstance(obj, tuple):
            combined_result_dic = dict()
            combined_result_list = []
            for o in obj:
                result = super().visit(o, *args)
                if isinstance(result, dict):
                    combined_result_dic.update(result)
                else:
                    combined_result_list.append(result)
            assert bool(combined_result_dic) != bool(combined_result_list), "Either dict or list should be returned"
            return combined_result_dic if combined_result_dic else tuple(combined_result_list)
        return super().visit(obj, *args)

class ParseTreeVisitor(ParseTreeVisitorBase):
    def __init__(self):
        super().__init__()
    
    def visit_RawStmt(self, pg_node, ancestor=[]):
        return self.visit(pg_node.stmt, ancestor)

    def visit_SelectStmt(self, pg_node, ancestor):
        def get_number_or_none(node):
            return node.number if node else None
        
        def combine_from(nodes):
            tmp = asdl_class.from_(table_units=[], join_conds=[])
            for node in nodes:
                if node.table_units:
                    tmp.table_units += node.table_units
                if node.join_conds:
                    tmp.join_conds += node.join_conds
            return tmp
        
        return asdl_class.sql(select=asdl_class.select(
                                    is_distinct=bool(pg_node.distinctClause), 
                                    aggs=self.visit(pg_node.targetList, ancestor)
                                    ), 
                            from_ = combine_from(self.visit(pg_node.fromClause, ancestor)),
                            sql_where=asdl_class.sql_where(where=self.visit(pg_node.whereClause, ancestor)),
                            sql_groupby=asdl_class.sql_groupby(group_by=self.visit(pg_node.groupClause, ancestor),
                                                               having=self.visit(pg_node.havingClause, ancestor)),
                            sql_orderby=asdl_class.sql_orderby(order_by=self.visit(pg_node.sortClause, ancestor),
                                                              limit=get_number_or_none(self.visit(pg_node.limitCount, ancestor))),
                            )
        
    def visit_ResTarget(self, pg_node, ancestor):
        return asdl_class.agg(agg_type=asdl_class.NoneAggOp(),
                       val_unit= asdl_class.Column(col_unit1=self.visit(pg_node.val, ancestor)))

    def visit_FuncCall(self, pg_node, ancestor):
        col_str = "*" if pg_node.agg_star else '.'.join([string_node.val for string_node in pg_node.args[0].fields])
        return asdl_class.col_unit(
            agg_type=AGG_FUNC_STR_TO_AST[pg_node.funcname[0].val](),
            column=asdl_class.column(col_str=col_str),
            is_distinct=pg_node.agg_distinct,
        )

    def visit_ColumnRef(self, pg_node, ancestor):
        # Get Colum name
        if(isinstance(pg_node.fields[0], pglast.ast.A_Star)):
            col_str = "*"
        elif isinstance(pg_node.fields[0], pglast.ast.String):
            col_str = '.'.join([string_node.val for string_node in pg_node.fields])
        else:   
            raise NotImplementedError("ColumnRef not implemented yet")
        return asdl_class.col_unit(
            agg_type=asdl_class.NoneAggOp(),
            column=asdl_class.column(col_str=col_str),
            is_distinct=False)

    def visit_RangeVar(self, pg_node, ancestor):
        """_summary_

        Args:
            pg_node (_type_): _description_
            ancestor (_type_): _description_

        Returns:
            _asdl_class.from__: ASDL AST Node for "from_"
        """
        tab_str = pg_node.relname
        if pg_node.alias:
            tab_str = f"{tab_str} {pg_node.alias.aliasname}"
        return asdl_class.from_(table_units=[asdl_class.Table(table=asdl_class.table(tab_str=tab_str))])
    
    def visit_JoinExpr(self, pg_node, ancestor):
        """_summary_

        Args:
            pg_node (_type_): _description_
            ancestor (_type_): _description_

        Return:
            _asdl_class.from__: ASDL AST Node for "from_"
        """
        def create_default_cond_for_cross_join(tab1_str, tab2_str):
            return asdl_class.Eq(
                val_unit=asdl_class.Column(col_unit1=asdl_class.col_unit(
                    agg_type=asdl_class.NoneAggOp(),
                    column=asdl_class.column(col_str=f"{tab1_str}.*"),
                    is_distinct=False,
                )),
                val1=asdl_class.ColUnit(col_unit=asdl_class.col_unit(
                    agg_type=asdl_class.NoneAggOp(),
                    column=asdl_class.column(col_str=f"{tab2_str}.*"),
                    is_distinct=False,
                ))
            )
        def get_join_type(jointype, has_quals, is_natural):
            assert jointype in JOIN_TYPE_PG_TO_AST.keys(), f"{jointype} is not implemented!"
            ast_join_type_class = JOIN_TYPE_PG_TO_AST[jointype]
            if ast_join_type_class == asdl_class.INNER_JOIN and not has_quals:
                if is_natural:
                    ast_join_type_class = asdl_class.NATURAL_JOIN
                else:
                    ast_join_type_class = asdl_class.CROSS_JOIN
            return ast_join_type_class()
            
        # Get class for inner data
        left_from_ = self.visit(pg_node.larg, ancestor)
        right_from_ = self.visit(pg_node.rarg, ancestor)
        # Combine class
        cond = self.visit(pg_node.quals, ancestor) if pg_node.quals else create_default_cond_for_cross_join(pg_node.larg.relname, pg_node.rarg.relname)
        new_join_cond = asdl_class.join_cond(join_type=get_join_type(pg_node.jointype, 
                                                                    has_quals=bool(pg_node.quals),
                                                                    is_natural=pg_node.isNatural),
                                             cond=cond)
        return asdl_class.from_(table_units=left_from_.table_units + right_from_.table_units,
                               join_conds=left_from_.join_conds+[new_join_cond])
    
    def visit_A_Const(self, pg_node, ancestor):
        val_node = pg_node.val
        rexpr_val_type = type(val_node)
        if rexpr_val_type == pglast.ast.String:
            return asdl_class.String(string=val_node.val)
        elif rexpr_val_type == pglast.ast.Integer:
            return asdl_class.Number(number=val_node.val)
        raise NotImplementedError(f"A_Expr not implemented yet for type:{rexpr_val_type}")
    
    def visit_A_Expr(self, pg_node, ancestor):
        def create_left_val_unit(lexpr):
            lexpr_type = type(lexpr)
            if lexpr_type == pglast.ast.ColumnRef:
                col_unit = self.visit(lexpr, ancestor)
            elif lexpr_type == pglast.ast.FuncCall:
                col_unit = self.visit(lexpr, ancestor)
            else:
                raise NotImplementedError(f"A_Expr not implemented yet for type:{lexpr_type}")
            return asdl_class.Column(col_unit1=col_unit)
        def create_right_val(rexpr):
            def wrap_constructor(node):
                if type(node) == str:
                    return asdl_class.String(node)
                elif type(node) == asdl_class.sql:
                    return asdl_class.ValSql(s=node)
                elif type(node) == asdl_class.col_unit:
                    return asdl_class.ColUnit(col_unit=node)
                elif type(node) in [int, float]:
                    return asdl_class.Number(object=node)
                elif type(node) in [asdl_class.Number, asdl_class.String]:
                    return node
                else:
                    return asdl_class.Terminal()
            if type(rexpr) == tuple:
                return [wrap_constructor(self.visit(single_expr , ancestor)) for single_expr in rexpr]
            return wrap_constructor(self.visit(rexpr, ancestor))
            
        # Create left expression
        val_unit = create_left_val_unit(pg_node.lexpr)
        # Create right expression
        op = pg_node.name[0].val
        rval = create_right_val(pg_node.rexpr)
        if op == "BETWEEN":
            assert len(rval) == 2, "BETWEEN should have two arguments"
            cond = asdl_class.Between(val_unit=val_unit, val1=rval[0], val2=rval[1])
        else:
            assert type(rval) not in [tuple, list], "Only one argument is supported"
            if op == "=":
                cond = asdl_class.Eq(val_unit=val_unit, val1=rval)
            elif op == ">":
                cond = asdl_class.Gt(val_unit=val_unit, val1=rval)
            elif op == "<":
                cond = asdl_class.Lt(val_unit=val_unit, val1=rval)
            elif op == ">=":
                cond = asdl_class.Ge(val_unit=val_unit, val1=rval)
            elif op == "<=":
                cond = asdl_class.Le(val_unit=val_unit, val1=rval)
            elif op == "<>":
                cond = asdl_class.Ne(val_unit=val_unit, val1=rval)
            else:
                raise NotImplementedError(f"A_Expr with op:({op}) not implemented yet!")
        return cond

    def visit_BoolExpr(self, pg_node, ancestor):
        bool_op_type_id = pg_node.boolop.value
        if bool_op_type_id == pglast.enums.primnodes.BoolExprType.AND_EXPR:
            assert len(pg_node.args) == 2, f"AND_EXPR should have 2 args. But got {len(pg_node.args)}"
            cond = asdl_class.And(left=self.visit(pg_node.args[0], ancestor), right=self.visit(pg_node.args[1], ancestor))
        elif bool_op_type_id == pglast.enums.primnodes.BoolExprType.OR_EXPR:
            assert len(pg_node.args) == 2, f"OR_EXPR should have 2 args. But got {len(pg_node.args)}"
            cond = asdl_class.Or(left=self.visit(pg_node.args[0], ancestor), right=self.visit(pg_node.args[1], ancestor))
        elif bool_op_type_id == pglast.enums.primnodes.BoolExprType.NOT_EXPR:
            cond = asdl_class.Not(cond=self.visit(pg_node.args[0], ancestor))
        return cond

    def visit_SortBy(self, pg_node, ancestor):
        if pg_node.sortby_dir == pglast.enums.parsenodes.SortByDir.SORTBY_DEFAULT:
            sort_dir = asdl_class.Default()
        elif pg_node.sortby_dir == pglast.enums.parsenodes.SortByDir.SORTBY_ASC:
            sort_dir = asdl_class.Asc()
        elif pg_node.sortby_dir == pglast.enums.parsenodes.SortByDir.SORTBY_DESC:
            sort_dir = asdl_class.Desc()
        return asdl_class.order_by(order=sort_dir, val_unit=asdl_class.Column(col_unit1=self.visit(pg_node.node, ancestor)))

class ASTVisitor(ASTVisitorBase):
    def __init__(self):
        super().__init__()

    def _col_unit_to_pg_node(self, col_unit, is_join_without_cond=False):
        def is_star(col_str_split):
            return col_str_split[-1] == "*"
        def has_agg(col_unit):
            return type(col_unit.agg_type) != asdl_class.NoneAggOp
        def create_ColumnRef(col_unit):
            col_str_split = col_unit.column.col_str.split(".")
            if is_star(col_str_split) and not is_join_without_cond:
                fields=[pglast.ast.A_Star()]
            else:
                fields=[pglast.ast.String(value=col_str) for col_str in col_str_split]
            return pglast.ast.ColumnRef(fields=fields)

        def create_FuncCall(col_unit):
            agg_name = AGG_FUNC_AST_TO_STR[type(col_unit.agg_type)]
            agg_star = is_star(col_unit.column.col_str.split("."))
            args = None if agg_star else (create_ColumnRef(col_unit),)
            return pglast.ast.FuncCall(
                agg_distinct=col_unit.is_distinct,
                agg_star=agg_star,
                agg_within_group=False,
                func_variadic=False,
                args=args,
                funcname=(pglast.ast.String(value=agg_name),)
            )
        # Main logic
        if has_agg(col_unit):
            return create_FuncCall(col_unit)
        else:
            return create_ColumnRef(col_unit)
    
    def _create_A_Expr(self, op_value, l_val_node, r_val_nodes):
        def create_lexpr(col_unit):
            return self._col_unit_to_pg_node(col_unit)
    
        def create_rexpr(r_value_nodes):
            rexprs = []
            for value_node in r_value_nodes:
                if type(value_node) == asdl_class.String:
                    rexprs.append(pglast.ast.A_Const(val=pglast.ast.String(value=value_node.string)))
                elif type(value_node) == asdl_class.Number:
                    rexprs.append(pglast.ast.A_Const(val=pglast.ast.Integer(value=int(value_node.number))))
                elif type(value_node) == asdl_class.ColUnit:
                    rexprs.append(self._col_unit_to_pg_node(value_node.col_unit))
                else:
                    raise NotImplementedError(f"RValue type: {type(value_node)} not implemented yet!")
            return rexprs[0] if len(rexprs) == 1 else tuple(rexprs)
        
        kind = pglast.enums.parsenodes.A_Expr_Kind.AEXPR_BETWEEN if op_value == "BETWEEN" \
                    else pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP
        return pglast.ast.A_Expr(
            kind=kind,
            lexpr=create_lexpr(l_val_node),
            name=(pglast.ast.String(value=op_value),),
            rexpr=create_rexpr(r_val_nodes))
        
    def _create_BoolExpr(self, args, bool_op_type):
        return pglast.ast.BoolExpr(
            args=tuple([self._create_Expr(arg) for arg in args]),
            boolop=bool_op_type
        )
    def _create_Expr(self, cond_node):
        if cond_node == None:
            return None
        
        op_type = type(cond_node)
        # Find operator
        if op_type == asdl_class.And:
            return self._create_BoolExpr([cond_node.left, cond_node.right], pglast.enums.primnodes.BoolExprType.AND_EXPR)
        elif op_type == asdl_class.Or:
            return self._create_BoolExpr([cond_node.left, cond_node.right], pglast.enums.primnodes.BoolExprType.OR_EXPR)
        elif op_type == asdl_class.Not:
            return self._create_BoolExpr([cond_node.cond], pglast.enums.primnodes.BoolExprType.NOT_EXPR)
        else:
            # Extract left Operand value
            lexpr_value = cond_node.val_unit.col_unit1.column.col_str
            l_val_node = cond_node.val_unit.col_unit1
            # Extract right Operand value
            if op_type == asdl_class.Between:                    
                op_value = "BETWEEN"
                # Find right operand value
                r_val_nodes = [cond_node.val1, cond_node.val2]
            else:
                if op_type == asdl_class.Eq:
                    op_value = "="
                elif op_type == asdl_class.Gt:
                    op_value = ">"
                elif op_type == asdl_class.Lt:
                    op_value = "<"
                elif op_type == asdl_class.Ge:
                    op_value = ">="
                elif op_type == asdl_class.Le:
                    op_value = "<="
                elif op_type == asdl_class.Ne:
                    op_value = "<>"
                else:
                    raise NotImplementedError(f"Operator {op_type} not implemented yet!")
                # Find right operand value
                r_val_nodes = [cond_node.val1]
            # Return A_Expr
            return self._create_A_Expr(op_value, l_val_node, r_val_nodes)

    def visit_sql(self, ast_node, ancestor=[]):
        select_result = self.visit(ast_node.select, ancestor)
        from__result = {"fromClause": self.visit(ast_node.from_, ancestor)}
        sql_where_result = {"whereClause": self.visit(ast_node.sql_where, ancestor)}
        sql_groupby_result = self.visit(ast_node.sql_groupby, ancestor)
        sql_orderby_result = self.visit(ast_node.sql_orderby, ancestor)
        sql_ieu_result = self.visit(ast_node.sql_ieu, ancestor)
        kwargs = functools.reduce(lambda x, y: {**x, **y}, [select_result, from__result, sql_where_result, sql_groupby_result, sql_orderby_result, sql_ieu_result])
        return pglast.ast.RawStmt(
            stmt=pglast.ast.SelectStmt(all=False, op=pglast.enums.parsenodes.SetOperation.SETOP_NONE,
                                       **kwargs),
            stmt_location=dummy_location, stmt_len=dummy_location)
        
    def visit_select(self, ast_node, ancestor=[]):
        # targetList
        pg_nodes = self.visit(ast_node.aggs, ancestor)
        distinctClause = (None,) if ast_node.is_distinct else None 
        return {"distinctClause": distinctClause, 'targetList': pg_nodes}

    def visit_agg(self, ast_node, ancestor=[]):
        return pglast.ast.ResTarget(val=self._col_unit_to_pg_node(ast_node.val_unit.col_unit1))
        
    def visit_from_(self, ast_node, ancestor=[]):
        def table_unit_to_RangeVar(table_unit):
            tab_str = table_unit.table.tab_str.split(" ")
            if len(tab_str) > 1:
                relname = tab_str[0]
                alias = pglast.ast.Alias(aliasname=tab_str[-1])
            else:
                relname = tab_str[0]
                alias = None
            return pglast.ast.RangeVar(
                inh=True,
                relname=relname,
                relpersistence="p",
                alias=alias
            )
        
        def columnRef_to_RangeVar(columnRef_node, rangeVar_node_list):
            assert len(columnRef_node.fields) > 1, "There should be table alias!"
            tab_ref_str = columnRef_node.fields[0].val
            for rangeVar_node in rangeVar_node_list:
                if tab_ref_str in [rangeVar_node.relname, rangeVar_node.alias.aliasname]:
                    return rangeVar_node
            raise RuntimeError(f"No matching table with: {tab_ref_str}")
        
        def get_join_type(join_type):
            assert type(join_type) in JOIN_TYPE_AST_TO_PG, f"{type(join_type)} is not implemented yet!"
            return JOIN_TYPE_AST_TO_PG[type(join_type)]
            
        def join_conds_to_JoinExpr(join_conds, rangeVar_node_list):
            prev=None 
            for join_cond in join_conds:
                assert type(join_cond.cond) == asdl_class.Eq, f"right cond should be asdl_class.Eq, but found:{type(join_cond.cond)}"
                # Get join type
                join_type = get_join_type(join_cond.join_type)
                is_join_without_cond = type(join_cond.join_type) in [asdl_class.CROSS_JOIN, asdl_class.NATURAL_JOIN]
                # create column references
                l_columnRef = self._col_unit_to_pg_node(join_cond.cond.val_unit.col_unit1, is_join_without_cond)
                r_columnRef = self._col_unit_to_pg_node(join_cond.cond.val1.col_unit, is_join_without_cond)
                # create Range variables
                l_RangeVar = columnRef_to_RangeVar(l_columnRef, rangeVar_node_list)
                r_RangeVar = columnRef_to_RangeVar(r_columnRef, rangeVar_node_list)
                # Select correct left argument
                larg = prev if prev else l_RangeVar
                # Create quals
                quals = None if is_join_without_cond else self._create_Expr(join_cond.cond) 
                # Create pglast join expression
                next_joinExpr = pglast.ast.JoinExpr(
                    isNatural=type(join_cond.join_type)==asdl_class.NATURAL_JOIN,
                    jointype=join_type,
                    larg=larg,
                    rarg=r_RangeVar,
                    quals=quals,
                    rtindex=0,
                )
                prev = next_joinExpr
            return tuple([prev])
            
        # Creaet a new list instance
        rangeVar_node_list = [table_unit_to_RangeVar(table_unit) for table_unit in ast_node.table_units]
        if ast_node.join_conds:
            return join_conds_to_JoinExpr(ast_node.join_conds, rangeVar_node_list)
        return tuple(rangeVar_node_list)

    def visit_sql_where(self, ast_node, ancestor=[]):
        return self._create_Expr(ast_node.where)

    def visit_sql_groupby(self, ast_node, ancestor=[]):
        groupClause = None
        havingClause = None
        if ast_node.group_by:
            # Create Group Clause
            groupClause = tuple([self._col_unit_to_pg_node(col_unit) for col_unit in ast_node.group_by])
        if ast_node.having:
            # Create Having Clause
            havingClause = self._create_Expr(ast_node.having)
        
        return {"groupClause": groupClause, "havingClause": havingClause}

    def visit_sql_orderby(self, ast_node, ancestor=[]):
        def create_pg_SortBy_node(ast_order_by_node):
            order_dir_type = type(ast_order_by_node.order)
            if order_dir_type == asdl_class.Default:
                sortby_dir = pglast.enums.parsenodes.SortByDir.SORTBY_DEFAULT
            elif order_dir_type == asdl_class.Desc:
                sortby_dir = pglast.enums.parsenodes.SortByDir.SORTBY_DESC
            elif order_dir_type == asdl_class.Asc:
                sortby_dir = pglast.enums.parsenodes.SortByDir.SORTBY_ASC
            else:
                raise RuntimeError(f"Should not be here!: {order_dir_type}")
            
            return pglast.ast.SortBy(
                node = self._col_unit_to_pg_node(ast_order_by_node.val_unit.col_unit1),
                sortby_dir=sortby_dir,
                sortby_nulls=pglast.enums.parsenodes.SortByNulls.SORTBY_NULLS_DEFAULT,
            ) 
        # Default value
        sortClause = None
        limitCount = None
        limitOption = pglast.enums.nodes.LimitOption.LIMIT_OPTION_DEFAULT
        
        # create sortClause
        if ast_node.order_by:
            sortClause = tuple([create_pg_SortBy_node(node) for node in ast_node.order_by])
        
        # create limitOption
        if ast_node.limit:
            limitOption = pglast.enums.nodes.LimitOption.LIMIT_OPTION_COUNT
            limitCount = pglast.ast.A_Const(val=pglast.ast.Integer(value=ast_node.limit))
        
        return {"limitOption": limitOption, "limitCount":limitCount, "sortClause": sortClause}

    def visit_sql_ieu(self, ast_node, ancestor=[]):
        return {}


class SQLParser():
    """_summary_table = {}
    """
    def __init__(self, asdl_file_path): 
        self.asdl_def = asdl.parse(asdl_file_path)
        asdl.check(self.asdl_def)
    
    def sql2pt(self, sql):
        """Convert SQL to parse tree."""
        return pglast.parse_sql(sql)[0]

    def pt2ast(self, parse_tree):
        """Convert parse tree to ASDL format."""
        return ParseTreeVisitor().visit(parse_tree)

    def ast2pt(self, asdl_ast):
        """Convert ASDL format to parse tree."""
        return ASTVisitor().visit(asdl_ast)

    def pt2sql(self, parse_tree):
        """Convert parse tree to SQL."""
        return stream.RawStream()(parse_tree)

if __name__ == "__main__":
    sql_query = "SELECT * FROM tab1 AS a CROSS JOIN tab2 AS b"
    parser = SQLParser("./src/grammar/ratsql.asdl")
    # Parse string and Generate Parse tree
    parse_tree = parser.sql2pt(sql_query)
    print("\n Parsed parse tree: \n")
    pprint.pprint(parse_tree(skip_none=True))
    # Transform parse tree into ASDL AST
    asdl_ast = parser.pt2ast(parse_tree)
    print("\n Parsed ASDL AST: \n")
    print(asdl_ast)
    # Reconstruct parse tree from ASDL AST
    back_parse_tree = parser.ast2pt(asdl_ast)
    print("\n Reconstructed parse tree: \n")
    pprint.pprint(back_parse_tree)
    # Reconstruct SQL string from parse tree
    print(f"Original      SQL:{parser.pt2sql(parse_tree)}")
    print(f"Reconstructed SQL:{parser.pt2sql(back_parse_tree)}")
    
    stop =1
