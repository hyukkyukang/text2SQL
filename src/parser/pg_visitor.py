import pglast
from src.parser.visitor import VisitorBase, ASDL_CLASS, AGG_FUNC_STR_TO_AST, JOIN_TYPE_PG_TO_AST, OP_STR_TO_AST, VAL_OP_STR_TO_AST


class PGVisitorVisitorBase(VisitorBase):
    """_summary_: Base visitor for pglast parse tree"""
    def visit(self, obj, *args):
        """_summary_: Traverse nodes of the pglast parse tree

        Args:
            obj (Union[list | tuple | pglast.ast.Node]): input object for visitor

        Returns:
            Union[list|tuple|pglast.ast.Node]: transformed object or list/tuple of objects
        """
        if type(obj) in [list, tuple]:
            return [super(PGVisitorVisitorBase, self).visit(o, *args) for o in obj]
        return super().visit(obj, *args)
    

class PGVisitor(PGVisitorVisitorBase):
    """_summary_: Transform postgrseql parse tree to AST tree defined with ASDL grammar"""
    def __init__(self):
        super().__init__()
    
    def visit_RawStmt(self, pg_node):
        """
        Args:
            pg_node (pglast.ast.Node): Postgresql parse tree

        Returns:
            ASDL_Class.sql: AST tree defined with ASDL grammar
        """
        result_ast = ASDL_CLASS.sql(select_stmt=self.visit(pg_node.stmt))
        return result_ast

    def visit_SelectStmt(self, pg_node):
        """
        Args:
            pg_node (pglast.ast.SelectStmt): Parse tree node for a general select statement
        
        Returns:
            ASDL_CLASS.select_stmt: AST tree for a general select statement
        """
        def create_ast_without_set_operation(pg_node):
            def get_number_or_none(node):
                return node.number if node else None
            def combine_from(nodes):
                tmp = ASDL_CLASS.sql_from(table_units=[], join_conds=[])
                for node in nodes:
                    if node.table_units:
                        tmp.table_units += node.table_units
                    if node.join_conds:
                        tmp.join_conds += node.join_conds
                return tmp

            # Create arguments
            select = ASDL_CLASS.select(is_distinct=bool(pg_node.distinctClause), aggs=self.visit(pg_node.targetList))
            sql_from = combine_from(self.visit(pg_node.fromClause))
            sql_where = ASDL_CLASS.sql_where(where=self.visit(pg_node.whereClause))
            sql_groupby = ASDL_CLASS.sql_groupby(group_by=self.visit(pg_node.groupClause), having=self.visit(pg_node.havingClause))
            sql_orderby = ASDL_CLASS.sql_orderby(order_by=self.visit(pg_node.sortClause), limit=get_number_or_none(self.visit(pg_node.limitCount)))
            
            return ASDL_CLASS.No_Set(select=select, sql_from=sql_from, sql_where=sql_where, sql_groupby=sql_groupby, sql_orderby=sql_orderby)
        
        # Main logic of the function
        if pg_node.op != pglast.enums.parsenodes.SetOperation.SETOP_NONE:
            result_ast_node =  create_ast_without_set_operation(pg_node)
        else:
            # Recursively create AST nodes for left and right satements
            left_statement, right_statement = self.visit(pg_node.larg), self.visit(pg_node.rarg)
            # Select correct class for set operation
            if pg_node.op == pglast.enums.parsenodes.SetOperation.SETOP_UNION:
                selected_ASDL_CLASS = ASDL_CLASS.Union
            elif pg_node.op == pglast.enums.parsenodes.SetOperation.SETOP_EXCEPT:
                selected_ASDL_CLASS = ASDL_CLASS.Except
            elif pg_node.op == pglast.enums.parsenodes.SetOperation.SETOP_INTERSECT:
                selected_ASDL_CLASS = ASDL_CLASS.Intersect
            else:
                raise RuntimeError(f"Should not be here! Bad type: {type(pg_node.op)}")
             # Create AST node
            result_ast_node =  selected_ASDL_CLASS(all=pg_node.all, select_stmt1=left_statement, select_stmt2=right_statement)
        return result_ast_node

    def visit_ResTarget(self, pg_node):
        """_summary_: Transformation related to the target list of a select statement
                    pg_node.val could be one of [pglast.ast.ColumnRef, pglast.ast.A_Star, pglast.ast.FuncCall]
        Args:
            pg_node (pglast.ast.ResTarget): parse tree node represents a target list entry in a SELECT statement.

        Raises:
            NotImplementedError: FuncCall Not considered yet

        Returns:
            ASDL_CLASS.agg: AST node representing to aggregation of an expression
        """
        val_type = type(pg_node.val)
        if val_type == pglast.ast.ColumnRef:
            return ASDL_CLASS.agg(agg_type=ASDL_CLASS.NoAggFunc(), expr=ASDL_CLASS.ValCol(col_unit=self.visit(pg_node.val)))
        elif val_type == pglast.ast.A_Expr:
            return ASDL_CLASS.agg(agg_type=ASDL_CLASS.NoAggFunc(), expr=self.visit(pg_node.val))
        elif val_type == pglast.ast.FuncCall:
            raise NotImplementedError
        else:
            raise RuntimeError(f"Bad type: {val_type}")

    def visit_FuncCall(self, pg_node):
        """_summary_: Transformation related expressions with functions

        Args:
            pg_node (pglast.ast.FuncCall): parse tree node represents a function call.

        Returns:
            ASDL_CLASS.col_unit: AST node representing a function call
        """
        def get_column_referencing_string(node):
            return "*" if node.agg_star else '.'.join([string_node.val for string_node in node.args[0].fields])
        def get_func_name(node):
            return node.funcname[0].val
    
        return ASDL_CLASS.col_unit(
            agg_type=AGG_FUNC_STR_TO_AST[get_func_name(pg_node)](),
            column=ASDL_CLASS.column(col_str=get_column_referencing_string(pg_node)),
            is_distinct=pg_node.agg_distinct)

    def visit_ColumnRef(self, pg_node):
        """_summary_: Transformation related to column references

        Args:
            pg_node (pglast.ast.ColumnRef): parse tree node represents a reference to a column in a table.

        Raises:
            NotImplementedError: There could be a unconsidered case

        Returns:
            ASDL_CLASS.col_unit: AST node representing a column reference
        """
        def get_column_referencing_string(node):
            assert type(node) in [pglast.ast.String, pglast.ast.A_Star], f"Unexpected type: {type(node)}"
            return "*" if type(node.fields[0]) == pglast.ast.A_Star else '.'.join([string_node.val for string_node in node.fields])
        
        return ASDL_CLASS.col_unit(
            agg_type=ASDL_CLASS.NoAggFunc(),
            column=ASDL_CLASS.column(col_str=get_column_referencing_string(pg_node)),
            is_distinct=False)

    def visit_RangeVar(self, pg_node):
        """_summary_: Transformation related to table references

        Args:
            pg_node (pglast.ast.RangeVar): parse tree node representing a table reference

        Returns:
            ASDL_CLASS.sql_from: ASDL AST Node for "from"
        """ 
        def get_table_referencing_string(node):
            return f"{node.relname} {pg_node.alias.aliasname}" if node.alias else node.relname
        
        return ASDL_CLASS.sql_from(table_units=[ASDL_CLASS.Table(table=ASDL_CLASS.table(tab_str=get_table_referencing_string(pg_node)))])
    
    def visit_RangeSubselect(self, pg_node):
        """_summary_: Transformation related to subselects

        Args:
            pg_node (pglast.ast.RangeSubselect): Parse tree node representing a subselect

        Returns:
            ASDL_CLASS.sql_from: ASDL AST Node for "from"
        """
        return ASDL_CLASS.sql_from(table_units=[ASDL_CLASS.TableUnitSql(select_stmt=self.visit(pg_node.subquery),
                                                                            alias=pg_node.alias.aliasname)])
                                
    
    def visit_JoinExpr(self, pg_node):
        """_summary_: Transformation related to join expressions

        Args:
            pg_node (pglast.ast.JoinExpr): Parse tree node representing a join expression

        Return:
            _ASDL_CLASS.sql_from: ASDL AST Node for "from"
        """
        def create_default_expr_for_cross_join(tab1_str, tab2_str):
            return ASDL_CLASS.Eq(
                expr1=ASDL_CLASS.ValCol(col_unit=ASDL_CLASS.col_unit(
                    agg_type=ASDL_CLASS.NoAggFunc(),
                    column=ASDL_CLASS.column(col_str=f"{tab1_str}.*"),
                    is_distinct=False,
                )),
                expr2=ASDL_CLASS.VqlCol(col_unit=ASDL_CLASS.col_unit(
                    agg_type=ASDL_CLASS.NoAggFunc(),
                    column=ASDL_CLASS.column(col_str=f"{tab2_str}.*"),
                    is_distinct=False,
                ))
            )
        def create_join_expression(node):
            self.visit(node.quals) if node.quals else create_default_expr_for_cross_join(node.larg.relname, node.rarg.relname)
        def get_join_type(jointype, has_quals, is_natural):
            assert jointype in JOIN_TYPE_PG_TO_AST.keys(), f"{jointype} is not implemented!"
            ast_join_type_class = JOIN_TYPE_PG_TO_AST[jointype]
            if ast_join_type_class == ASDL_CLASS.INNER_JOIN and not has_quals:
                ast_join_type_class = ASDL_CLASS.NATURAL_JOIN if is_natural else ASDL_CLASS.CROSS_JOIN
            return ast_join_type_class()
            
        # Get class for inner data
        left_from_ = self.visit(pg_node.larg)
        right_from_ = self.visit(pg_node.rarg)
        # Combine class
        new_join_cond = ASDL_CLASS.join_cond(join_type=get_join_type(pg_node.jointype, has_quals=bool(pg_node.quals), is_natural=pg_node.isNatural),
                                             expr=create_join_expression(pg_node))
        return ASDL_CLASS.sql_from(table_units=left_from_.table_units + right_from_.table_units, join_conds=left_from_.join_conds+[new_join_cond])
    
    def visit_A_Const(self, pg_node):
        """_summary_: Transformation related to constant values

        Args:
            pg_node (pglast.ast.A_Const): parse tree node representing a constant value

        Raises:
            NotImplementedError: There could be a unconsidered case

        Returns:
            Union[ASDL_CLASS.String | ASDL_CLASS.Number]: ASDL AST Node for a constant value
        """
        val_node = pg_node.val
        rexpr_val_type = type(val_node)
        if rexpr_val_type == pglast.ast.String:
            return ASDL_CLASS.ValStr(string=val_node.val)
        elif rexpr_val_type == pglast.ast.Integer:
            return ASDL_CLASS.ValNum(number=val_node.val)
        elif rexpr_val_type == pglast.ast.Float:
            return ASDL_CLASS.ValNum(number=float(val_node.val))
        raise NotImplementedError(f"A_Expr not implemented yet for type:{rexpr_val_type}")
    
    def visit_A_Expr(self, pg_node):
        """_summary_: Transformation related to a single expression

        Args:
            pg_node (pglast.ast.A_Expr): parse tree node representing a single expression
            
        Returns:
            ASDL_CLASS.Expr: ASDL AST Node for an expression
        """
        def create_ast_expr_node(pg_expr):
            pg_expr_type = type(pg_expr)
            if pg_expr_type == tuple:
                return [create_ast_expr_node(single_expr) for single_expr in pg_expr]
            elif pg_expr_type == pglast.ast.A_Expr:
                return self.visit(pg_expr)
            elif pg_expr_type in [pglast.ast.ColumnRef, pglast.ast.FuncCall]:
                return ASDL_CLASS.ValCol(col_unit=self.visit(pg_expr))
            elif pg_expr_type == pglast.ast.A_Const:
                return self.visit(pg_expr)
            elif pg_expr_type == pglast.ast.SelectStmt:
                return ASDL_CLASS.ValSql(select_stmt=self.visit(pg_expr))
            else:
                # TODO: Check if there is case where self.visit(pg_expr) returns string, int, float
                raise NotImplementedError(f"A_Expr not implemented yet for type:{pg_expr_type}")             
            
        expr1 = create_ast_expr_node(pg_node.lexpr)
        expr2 = create_ast_expr_node(pg_node.rexpr)
        op_name = pg_node.name[0].val
        if op_name == "BETWEEN":
            assert len(expr2) == 2, "BETWEEN should have two arguments"
            expr = ASDL_CLASS.Between(expr1=expr1, expr2=expr2[0], expr3=expr2[1])
        elif op_name in OP_STR_TO_AST.keys():
            expr = OP_STR_TO_AST[op_name](expr1=expr1, expr2=expr2)
        elif op_name in VAL_OP_STR_TO_AST.keys():
            expr = VAL_OP_STR_TO_AST[op_name](expr1=expr1, expr2=expr2)
        else:
            raise RuntimeError(f"Operator {op_name} is not implemented!")
        return expr

    def visit_BoolExpr(self, pg_node):
        """_summary_: Transformation related to boolean expressions
                        pglast parse tree represents multiple boolean expressions as a list,
                        while ASDL AST represents it as a left deep tree.

        Args:
            pg_node (pglast.ast.BoolExpr): parse tree node representing a boolean expression
    
        Returns:
            ASDL_CLASS.Expr: ASDL AST Node for expression
        """
        def list_to_left_deep_tree(pg_node_list, class_for_wrapping):
            assert len(pg_node_list) > 1, f"BoolExpr should have at least two element"
            if len(pg_node_list) == 2:
                return class_for_wrapping(left=self.visit(pg_node_list[0]), right=self.visit(pg_node_list[1]))
            else:
                left_node = list_to_left_deep_tree(pg_node_list[:-1], class_for_wrapping)
                return class_for_wrapping(left=left_node, right=self.visit(pg_node_list[-1]))

        # Maind logic
        bool_op_type_id = pg_node.boolop.value
        if bool_op_type_id == pglast.enums.primnodes.BoolExprType.AND_EXPR:
            expr = list_to_left_deep_tree(pg_node.args, ASDL_CLASS.And)
        elif bool_op_type_id == pglast.enums.primnodes.BoolExprType.OR_EXPR:
            expr = list_to_left_deep_tree(pg_node.args, ASDL_CLASS.Or)
        elif bool_op_type_id == pglast.enums.primnodes.BoolExprType.NOT_EXPR:
            assert len(pg_node.args) == 1, f"NOT_EXPR should have 1 args. But got {len(pg_node.args)}"
            expr = ASDL_CLASS.Not(expr=self.visit(pg_node.args[0]))
        return expr

    def visit_SortBy(self, pg_node):
        """_summary_: Transformation related to ordering

        Args:
            pg_node (pglast.ast.SortBy): parse tree node representing ordering

        Returns:
            ASDL_CLASS.order_by: ASDL AST Node for ordering
        """
        def get_ordering_type(node):
            if node.sortby_dir == pglast.enums.parsenodes.SortByDir.SORTBY_DEFAULT:
                return ASDL_CLASS.Default()
            elif node.sortby_dir == pglast.enums.parsenodes.SortByDir.SORTBY_ASC:
                return ASDL_CLASS.Asc()
            elif node.sortby_dir == pglast.enums.parsenodes.SortByDir.SORTBY_DESC:
                return ASDL_CLASS.Desc()
            else:
                raise RuntimeError(f"Unknown sorting type: {node.sortby_dir}")

        return ASDL_CLASS.order_by(order=get_ordering_type(pg_node), val_unit=ASDL_CLASS.Column(col_unit1=self.visit(pg_node.node)))

    def visit_SubLink(self, pg_node):
        """_summary_: Transformation related to subquery

        Args:
            pg_node (pglast.ast.SubLink): parse tree node representing subquery

        Returns:
            Union[ASDL_CLASS.Exists | ASDL_CLASS.Any | ASDL_CLASS.All | ASDL_CLASS.VqlSql]: ASDL AST Node for subquery
        """
        if pg_node.subLinkType == pglast.enums.primnodes.SubLinkType.EXISTS_SUBLINK:
            return ASDL_CLASS.Exists(expr1=self.visit(pg_node.subselect))
        elif pg_node.subLinkType == pglast.enums.primnodes.SubLinkType.ANY_SUBLINK:
            selected_asdl_func_class = OP_STR_TO_AST[pg_node.operName[0].val] if pg_node.operName else ASDL_CLASS.In
            return ASDL_CLASS.Any(expr1=selected_asdl_func_class(expr1=self.visit(pg_node.testexpr), expr2=self.visit(pg_node.subselect)))
        elif pg_node.subLinkType == pglast.enums.primnodes.SubLinkType.ALL_SUBLINK:
            selected_func_class = OP_STR_TO_AST[pg_node.operName[0].val]
            return ASDL_CLASS.All(expr1=selected_func_class(expr1=self.visit(pg_node.testexpr), expr2=self.visit(pg_node.subselect)))
        elif pg_node.subLinkType == pglast.enums.primnodes.SubLinkType.EXPR_SUBLINK:
            return self.visit(pg_node.subselect)
        
        raise RuntimeError(f"SubLink type:({pg_node.subLinkType}) not implemented yet!")
