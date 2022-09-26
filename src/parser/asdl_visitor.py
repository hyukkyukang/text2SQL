import pglast
import functools

from src.parser.visitor import VisitorBase, ASDL_CLASS, AGG_FUNC_AST_TO_STR, OP_AST_TO_STR, JOIN_TYPE_AST_TO_PG, OP_TO_A_Expr_Kind, dummy_location


class ASDLVisitorBase(VisitorBase):
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


class ASDLVisitor(ASDLVisitorBase):
    def __init__(self):
        super().__init__()

    def _col_unit_to_pg_node(self, col_unit, is_join_without_cond=False):
        def is_star(col_str_split):
            return col_str_split[-1] == "*"
        def has_agg(col_unit):
            return type(col_unit.agg_type) != ASDL_CLASS.NoneAggOp
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
                if type(value_node) == ASDL_CLASS.String:
                    rexprs.append(pglast.ast.A_Const(val=pglast.ast.String(value=value_node.string)))
                elif type(value_node) == ASDL_CLASS.Number:
                    if type(value_node.number) == int:
                        rexprs.append(pglast.ast.A_Const(val=pglast.ast.Integer(value=value_node.number)))
                    elif type(value_node.number) == float:
                        rexprs.append(pglast.ast.A_Const(val=pglast.ast.Float(value=str(value_node.number))))
                    else:
                        raise RuntimeError(f"Number type:({type(value_node.number)}) not implemented yet!")
                elif type(value_node) == ASDL_CLASS.ColUnit:
                    rexprs.append(self._col_unit_to_pg_node(value_node.col_unit))
                elif type(value_node) == ASDL_CLASS.ValSql:
                    RawStmt_node = self.visit(value_node.select_stmt)
                    rexprs.append(pglast.ast.SubLink(subLinkType=pglast.enums.primnodes.SubLinkType.EXPR_SUBLINK,
                                       subselect=RawStmt_node, subLinkId=0))
                else:
                    raise NotImplementedError(f"RValue type: {type(value_node)} not implemented yet!")
            return rexprs[0] if len(rexprs) == 1 else tuple(rexprs)

        # Get A expression kind
        assert op_value in OP_TO_A_Expr_Kind.keys(), f"Operator: {op_value} not implemented yet!"
        kind = OP_TO_A_Expr_Kind[op_value]
        
        return pglast.ast.A_Expr(
            kind=kind,
            lexpr=create_lexpr(l_val_node),
            name=(pglast.ast.String(value=op_value),),
            rexpr=create_rexpr(r_val_nodes))
        
    def _create_BoolExpr(self, left_cond, right_cond, bool_op_type):
        def is_BoolExpr(expr):
            return type(expr) == pglast.ast.BoolExpr
        def is_A_Expr(expr):
            return type(expr) == pglast.ast.A_Expr
        def is_args_of_A_Expr(BoolExpr):
            return all([type(arg) == pglast.ast.A_Expr for arg in BoolExpr.args])
        def is_same_bool_op_type(BoolExpr, bool_op_type):
            return BoolExpr.boolop == bool_op_type
        def check_is_Expr(expr):
            assert is_A_Expr(expr) or is_BoolExpr(expr), f"Expression should be type: {type(expr)} not implemented yet!"
        # Main logic
        if bool_op_type == pglast.enums.primnodes.BoolExprType.NOT_EXPR:
            assert right_cond == None, f"Right condition should be None for NOT_EXPR, but found: {right_cond}"
            return pglast.ast.BoolExpr(args=tuple([self._create_Expr(left_cond)]), boolop=bool_op_type)
        else:
            left_Expr = self._create_Expr(left_cond)
            right_Expr = self._create_Expr(right_cond)
            check_is_Expr(left_Expr)
            check_is_Expr(right_Expr)
            if is_BoolExpr(left_Expr) and is_A_Expr(right_Expr) and is_same_bool_op_type(left_Expr, bool_op_type) and is_args_of_A_Expr(left_Expr):
                # Combine right cond to left cond
                left_Expr.args = left_Expr.args + (right_Expr,)
                return left_Expr
            return pglast.ast.BoolExpr(args=tuple([left_Expr, right_Expr]), boolop=bool_op_type)

    def _create_Expr(self, cond_node):
        if cond_node == None:
            return None

        op_type = type(cond_node)
        # Find operator
        if op_type == ASDL_CLASS.And:
            return self._create_BoolExpr(cond_node.left, cond_node.right, pglast.enums.primnodes.BoolExprType.AND_EXPR)
        elif op_type == ASDL_CLASS.Or:
            return self._create_BoolExpr(cond_node.left, cond_node.right, pglast.enums.primnodes.BoolExprType.OR_EXPR)
        elif op_type == ASDL_CLASS.Not:
            return self._create_BoolExpr(cond_node.cond, None, pglast.enums.primnodes.BoolExprType.NOT_EXPR)
        elif op_type == ASDL_CLASS.Any:
            subselect = self.visit(cond_node.cond.val1, [])
            if type(subselect) == pglast.ast.RawStmt:
                subselect = subselect.stmt
            subLinkType=pglast.enums.primnodes.SubLinkType.ANY_SUBLINK
            # Create operName
            operName = tuple([pglast.ast.String(value=OP_AST_TO_STR[type(cond_node.cond)])]) if type(cond_node.cond) in OP_AST_TO_STR else None
            return pglast.ast.SubLink(
                subLinkType=subLinkType,
                subselect=subselect,
                operName=operName,
                subLinkId=0, #TODO: Not sure what this value means
                testexpr=self._col_unit_to_pg_node(cond_node.cond.val_unit) #TODO: Not sure what this value means
            )
        elif op_type == ASDL_CLASS.All:
            subselect = self.visit(cond_node.cond.val1, [])
            if type(subselect) == pglast.ast.RawStmt:
                subselect = subselect.stmt
            subLinkType=pglast.enums.primnodes.SubLinkType.ALL_SUBLINK            
            # Create operName
            operName = tuple([pglast.ast.String(value=OP_AST_TO_STR[type(cond_node.cond)])]) if type(cond_node.cond) in OP_AST_TO_STR else None
            return pglast.ast.SubLink(
                subLinkType=subLinkType,
                subselect=subselect,
                operName=operName,
                subLinkId=0, #TODO: Not sure what this value means
                testexpr=self._col_unit_to_pg_node(cond_node.cond.val_unit) #TODO: Not sure what this value means
            )
        elif op_type == ASDL_CLASS.Exists:
            subselect = self.visit(cond_node.val1, [])
            if type(subselect) == pglast.ast.RawStmt:
                subselect = subselect.stmt
            subLinkType=pglast.enums.primnodes.SubLinkType.EXISTS_SUBLINK
            return pglast.ast.SubLink(
                subLinkType=subLinkType,
                subselect=subselect,
                subLinkId=0
            )
        else:
            # Extract left Operand value
            l_val_node = cond_node.val_unit.col_unit1
            # Extract right Operand value
            if op_type == ASDL_CLASS.Between:                    
                op_value = "BETWEEN"
                # Find right operand value
                r_val_nodes = [cond_node.val1, cond_node.val2]
            elif op_type in OP_AST_TO_STR.keys():
                op_value = OP_AST_TO_STR[op_type]
                # Find right operand value
                r_val_nodes = [cond_node.val1]
                # Return A_Expr
                return self._create_A_Expr(op_value, l_val_node, r_val_nodes)
            elif op_type in VAL_OP_AST_TO_STR.keys():
                raise NotImplementedError

    def visit_sql(self, ast_node):
        return pglast.ast.RawStmt(stmt=self.visit(ast_node.select_stmt),
                                  stmt_location=dummy_location, stmt_len=dummy_location)

    def visit_select_stmt(self, ast_node):
        if type(ast_node) == ASDL_CLASS.No_Set:
            select_result = self.visit(ast_node.select)
            from__result = {"fromClause": self.visit(ast_node.from_)}
            sql_where_result = {"whereClause": self.visit(ast_node.sql_where)}
            sql_groupby_result = self.visit(ast_node.sql_groupby)
            sql_orderby_result = self.visit(ast_node.sql_orderby)
            kwargs = functools.reduce(lambda x, y: {**x, **y}, [select_result, from__result, sql_where_result, sql_groupby_result, sql_orderby_result])
            result_pg_node = pglast.ast.SelectStmt(all=False, op=pglast.enums.parsenodes.SetOperation.SETOP_NONE, **kwargs)
        else:
            if type(ast_node) == ASDL_CLASS.INTERSECT:
                set_op_type = pglast.enums.parsenodes.SetOperation.SETOP_INTERSECT
            elif type(ast_node) == ASDL_CLASS.UNION:
                set_op_type = pglast.enums.parsenodes.SetOperation.SETOP_UNION
            elif type(ast_node) == ASDL_CLASS.EXCEPT:
                set_op_type = pglast.enums.parsenodes.SetOperation.SETOP_EXCEPT
            else:
                raise RuntimeError(f"Bad AST Node type: {type(ast_node)}")
            result_pg_node = pglast.ast.SelectStmt(
                all=ast_node.all,
                larg=self.visit(ast_node.select_stmt1),
                op=set_op_type,
                rarg=self.visit(ast_node.select_stmt2),
                limitOption=pglast.enums.nodes.LimitOption.LIMIT_OPTION_DEFAULT
            )
        return result_pg_node

    def visit_select(self, ast_node=[]):
        pg_nodes = self.visit(ast_node.aggs)
        distinctClause = (None,) if ast_node.is_distinct else None 
        return {"distinctClause": distinctClause, 'targetList': pg_nodes}

    def visit_agg(self, ast_node=[]):
        return pglast.ast.ResTarget(val=self._col_unit_to_pg_node(ast_node.val_unit.col_unit1))
        
    def visit_from_(self, ast_node=[]):
        def table_unit_to_pg_node(table_unit):
            assert isinstance(table_unit, ASDL_CLASS.table_unit), f"Bad AST Node type: {type(table_unit)}"
            if type(table_unit) == ASDL_CLASS.TableUnitSql:
                pg_node = pglast.ast.RangeSubselect(
                    alias=pglast.ast.Alias(aliasname=table_unit.alias),
                    lateral=False,
                    subquery=self.visit(table_unit.select_stmt))
            else:
                tab_str = table_unit.table.tab_str.split(" ")
                relname = tab_str[0]
                alias = pglast.ast.Alias(aliasname=tab_str[-1]) if len(tab_str) > 1 else None
                pg_node = pglast.ast.RangeVar(inh=True,
                                            relname=relname,
                                            relpersistence="p",
                                            alias=alias)
            return pg_node

        def columnRef_to_RangeVar(columnRef_node, rangeVar_node_list):
            assert len(columnRef_node.fields) > 1, "There should be table alias!"
            tab_ref_str = columnRef_node.fields[0].val
            for rangeVar_node in rangeVar_node_list:
                if tab_ref_str == rangeVar_node.relname or \
                (rangeVar_node.alias is not None and tab_ref_str == rangeVar_node.alias.aliasname):
                    return rangeVar_node
            raise RuntimeError(f"No matching table with: {tab_ref_str}")
        
        def get_join_type(join_type):
            assert type(join_type) in JOIN_TYPE_AST_TO_PG, f"{type(join_type)} is not implemented yet!"
            return JOIN_TYPE_AST_TO_PG[type(join_type)]

        def join_conds_to_JoinExpr(join_conds, rangeVar_node_list):
            def RangeVar_signature(rangeVar_node):
                if rangeVar_node.alias:
                    return f"{rangeVar_node.relname}.{rangeVar_node.alias.aliasname}"
                return rangeVar_node.relname
            def get_col_units(ast_node):
                assert isinstance(ast_node, ASDL_CLASS.cond), f"Expected node type of ASDL_CLASS.cond but found: {type(ast_node)}"
                if type(ast_node) in [ASDL_CLASS.And, ASDL_CLASS.Or]:
                    # User left operand only
                    col_unit1 = get_col_units(ast_node.left)
                    # col_unit2 = get_col_units(ast_node.right)
                    return col_unit1
                elif type(ast_node) == ASDL_CLASS.Eq:
                    return [ast_node.val_unit.col_unit1, ast_node.val1.col_unit]
                else:
                    raise RuntimeError(f"Bad AST Node type: {type(ast_node)}")
            prev=None
            seen_rangeVar_set = set()
            for join_cond in join_conds:
                # Get join type
                join_type = get_join_type(join_cond.join_type)
                is_join_without_cond = type(join_cond.join_type) in [ASDL_CLASS.CROSS_JOIN, ASDL_CLASS.NATURAL_JOIN]
                col_unit1, col_unit2 = get_col_units(join_cond.cond)
                # create column references
                l_columnRef = self._col_unit_to_pg_node(col_unit1, is_join_without_cond)
                r_columnRef = self._col_unit_to_pg_node(col_unit2, is_join_without_cond)
                # create Range variables
                l_RangeVar = columnRef_to_RangeVar(l_columnRef, rangeVar_node_list)
                r_RangeVar = columnRef_to_RangeVar(r_columnRef, rangeVar_node_list)
                # Select correct left argument
                if prev:
                    larg = prev 
                else:
                    larg = l_RangeVar if rangeVar_node_list.index(l_RangeVar) < rangeVar_node_list.index(r_RangeVar) else r_RangeVar
                # Select correct right argument
                if RangeVar_signature(r_RangeVar) in seen_rangeVar_set:
                    rarg = l_RangeVar
                else:
                    rarg = l_RangeVar if rangeVar_node_list.index(l_RangeVar) > rangeVar_node_list.index(r_RangeVar) else r_RangeVar
                # Create quals
                quals = None if is_join_without_cond else self._create_Expr(join_cond.cond) 
                # Create pglast join expression
                next_joinExpr = pglast.ast.JoinExpr(
                    isNatural=type(join_cond.join_type)==ASDL_CLASS.NATURAL_JOIN,
                    jointype=join_type,
                    larg=larg,
                    rarg=rarg,
                    quals=quals,
                    rtindex=0,
                )
                # Set new state
                seen_rangeVar_set.update({RangeVar_signature(l_RangeVar), RangeVar_signature(r_RangeVar)})
                prev = next_joinExpr
            return tuple([prev])
            
        # Creaet a new list instance
        range_node_list = [table_unit_to_pg_node(table_unit) for table_unit in ast_node.table_units]
        if ast_node.join_conds:
            return join_conds_to_JoinExpr(ast_node.join_conds, range_node_list)
        return tuple(range_node_list)

    def visit_sql_where(self, ast_node=[]):
        return self._create_Expr(ast_node.where)

    def visit_sql_groupby(self, ast_node=[]):
        groupClause = None
        havingClause = None
        if ast_node.group_by:
            # Create Group Clause
            groupClause = tuple([self._col_unit_to_pg_node(col_unit) for col_unit in ast_node.group_by])
        if ast_node.having:
            # Create Having Clause
            havingClause = self._create_Expr(ast_node.having)
        
        return {"groupClause": groupClause, "havingClause": havingClause}

    def visit_sql_orderby(self, ast_node=[]):
        def create_pg_SortBy_node(ast_order_by_node):
            order_dir_type = type(ast_order_by_node.order)
            if order_dir_type == ASDL_CLASS.Default:
                sortby_dir = pglast.enums.parsenodes.SortByDir.SORTBY_DEFAULT
            elif order_dir_type == ASDL_CLASS.Desc:
                sortby_dir = pglast.enums.parsenodes.SortByDir.SORTBY_DESC
            elif order_dir_type == ASDL_CLASS.Asc:
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

