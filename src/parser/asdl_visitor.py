import pglast
import functools

from src.parser.visitor import VisitorBase, ASDL_CLASS, AGG_FUNC_AST_TO_STR, OP_AST_TO_STR, JOIN_TYPE_AST_TO_PG, OP_TO_A_Expr_Kind, BOOL_OP_TYPE_AST_TO_PG, SPECIAL_POSTGRESQL_TABLES, dummy_location


class ASDLVisitorBase(VisitorBase):
    """Transforms a AST object into a ASDL object"""
    def visit(self, obj, *args):
        if isinstance(obj, list) or isinstance(obj, tuple):
            combined_result_dic = dict()
            combined_result_list = []
            for o in obj:
                result = super().visit(o, *args)
                combined_result_list.append(result)
            assert bool(combined_result_dic) != bool(combined_result_list), "Either dict or list should be returned"
            return combined_result_dic if combined_result_dic else tuple(combined_result_list)
        return super().visit(obj, *args)


class ASDLVisitor(ASDLVisitorBase):
    """Transforms a AST node into a Postgres parse tree."""
    def __init__(self):
        super().__init__()

    def _col_unit_to_pg_node(self, col_unit, is_join_without_cond=False):
        def is_star(col_str_split):
            return col_str_split[-1] == "*"
        def has_agg(col_unit):
            return type(col_unit.agg_type) != ASDL_CLASS.NoAggFunc
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
        assert type(col_unit) == ASDL_CLASS.col_unit, f"Expected node type of col_unit, but found: {type(col_unit)}"
        if has_agg(col_unit):
            return create_FuncCall(col_unit)
        else:
            return create_ColumnRef(col_unit)

    def _create_A_Expr(self, op_value, l_val_node, r_val_nodes):
        def handle_rexpr(rexprs):
            return rexprs[0] if len(rexprs) == 1 else tuple(rexprs)
        
        # Get A expression kind
        assert op_value in OP_TO_A_Expr_Kind.keys(), f"Operator: {op_value} not implemented yet!"
        return pglast.ast.A_Expr(
            kind=OP_TO_A_Expr_Kind[op_value],
            lexpr=self.visit(l_val_node),
            name=(pglast.ast.String(value=op_value),),
            rexpr=handle_rexpr([self.visit(r_val_node) for r_val_node in r_val_nodes])
            )
    
    def visit_col_unit(self, ast_node):
        """Transform a AST node into a Postgres parse tree

        :param ast_node: AST node of col_unit
        :type ast_node: ASDL_CLASS.col_unit
        :return: parse tree node 
        :rtype: Union[pglast.ast.ColumnRef, pglast.ast.FuncCall]
        """
        return self._col_unit_to_pg_node(ast_node)
        
    def visit_expr(self, ast_node):
        """Transform AST node of type ASDL_CLASS.expr to pglsat parse tree node of type Expr

        :param ast_node: _description_
        :type ast_node: _type_
        :raises NotImplementedError: _description_
        :raises NotImplementedError: _description_
        :raises NotImplementedError: _description_
        :return: _description_
        :rtype: _type_
        """
        
        def create_BoolExpr(node):
            def is_BoolExpr(pg_expr):
                return type(pg_expr) == pglast.ast.BoolExpr
            def is_A_Expr(pg_expr):
                return type(pg_expr) == pglast.ast.A_Expr
            def is_sublink(pg_expr):
                return type(pg_expr) == pglast.ast.SubLink
            def is_same_bool_op_type(BoolExpr, bool_op_type):
                return BoolExpr.boolop == bool_op_type
            def check_is_pg_Expr(pg_expr):
                assert is_A_Expr(pg_expr) or is_BoolExpr(pg_expr) or is_sublink(pg_expr), f"Expression should be type: {type(pg_expr)} not implemented yet!"
            def get_pg_bool_type_of_ast_bool_node(node):
                assert type(node) in BOOL_OP_TYPE_AST_TO_PG.keys(), f"Unexpected bool op type: {type(node)}"
                return BOOL_OP_TYPE_AST_TO_PG[type(node)]

            bool_op_type = get_pg_bool_type_of_ast_bool_node(node)
            if bool_op_type == pglast.enums.primnodes.BoolExprType.NOT_EXPR:
                return pglast.ast.BoolExpr(args=tuple([self.visit(node.expr1)]), boolop=bool_op_type)
            else:
                left_pg_Expr = self.visit(node.expr1)
                right_pg_Expr = self.visit(node.expr2)
                check_is_pg_Expr(left_pg_Expr)
                check_is_pg_Expr(right_pg_Expr)
                # if is_BoolExpr(left_pg_Expr) and is_A_Expr(right_pg_Expr) and is_same_bool_op_type(left_pg_Expr, bool_op_type) and is_args_of_A_Expr(left_pg_Expr):
                if is_BoolExpr(left_pg_Expr) and is_same_bool_op_type(left_pg_Expr, bool_op_type):
                    # Combine right cond to left cond
                    left_pg_Expr.args = left_pg_Expr.args + (right_pg_Expr,)
                    return left_pg_Expr
                return pglast.ast.BoolExpr(args=tuple([left_pg_Expr, right_pg_Expr]), boolop=bool_op_type)
        def create_sublink(node):
            def _get_operName(node):
                return tuple([pglast.ast.String(value=OP_AST_TO_STR[type(node)])]) if type(node) in OP_AST_TO_STR.keys() else None
            def _get_testexpr(node):
                #TODO: Not sure what this value means
                if type(node.expr1) != ASDL_CLASS.ValSql:
                    node_for_textexpr = node.expr1
                elif type(node.expr2) != ASDL_CLASS.ValSql:
                    node_for_textexpr = node.expr2
                return self.visit(node_for_textexpr)
            def _get_subselect(node):
                if type(node.expr1) == ASDL_CLASS.ValSql:
                    node_for_subselect = node.expr1
                elif type(node.expr2) == ASDL_CLASS.ValSql:
                    node_for_subselect = node.expr2
                return self.visit(node_for_subselect.select_stmt)
            
            if type(node) == ASDL_CLASS.Any:
                subLinkType = pglast.enums.primnodes.SubLinkType.ANY_SUBLINK
                subselect = _get_subselect(node.expr1)
                # Create operName
                operName = _get_operName(node.expr1)
                testexpr = _get_testexpr(node.expr1)

            elif type(node) == ASDL_CLASS.All:
                subLinkType=pglast.enums.primnodes.SubLinkType.ALL_SUBLINK            
                subselect = _get_subselect(node.expr1)
                operName = _get_operName(node.expr1)
                testexpr = _get_testexpr(node.expr1)
            elif type(node) == ASDL_CLASS.Exists:
                subLinkType=pglast.enums.primnodes.SubLinkType.EXISTS_SUBLINK
                subselect = _get_subselect(node)
                operName=None
                testexpr=None
            else:
                raise RuntimeError("Should not be here")

            return pglast.ast.SubLink(
                subLinkType=subLinkType,
                subselect=subselect,
                operName=operName,
                subLinkId=0, #TODO: Not sure what this value means
                testexpr=testexpr 
            )
        def create_val(node):
            if type(node) == ASDL_CLASS.ValSql:
                RawStmt_node = self.visit(node.select_stmt)
                return pglast.ast.SubLink(subLinkType=pglast.enums.primnodes.SubLinkType.EXPR_SUBLINK,
                                       subselect=RawStmt_node, subLinkId=0)
            elif type(node) == ASDL_CLASS.ValCol:
                return self.visit(node.col_unit)
            elif type(node) == ASDL_CLASS.ValStr:
                return pglast.ast.A_Const(val=pglast.ast.String(value=node.string))
            elif type(node) == ASDL_CLASS.ValNum:
                if type(node.number) == int:
                        return pglast.ast.A_Const(val=pglast.ast.Integer(value=node.number))
                elif type(node.number) == float:
                    return pglast.ast.A_Const(val=pglast.ast.Float(value=str(node.number)))
                else:
                    raise RuntimeError(f"Number type:({type(node.number)}) not implemented yet!")
            else:
                raise RuntimeError("Should not be here!")

        # Main
        op_type = type(ast_node)
        # Find operator
        if op_type in [ASDL_CLASS.And, ASDL_CLASS.Or, ASDL_CLASS.Not]:
            return create_BoolExpr(ast_node)
        elif op_type in [ASDL_CLASS.Any, ASDL_CLASS.All, ASDL_CLASS.Exists]:
            return create_sublink(ast_node)
        elif op_type in [ASDL_CLASS.ValSql, ASDL_CLASS.ValCol, ASDL_CLASS.ValStr, ASDL_CLASS.ValNum]:
            return create_val(ast_node)
        else:
            # Case for binary operations
            l_val_node = ast_node.expr1
            # Extract right Operand value
            if op_type == ASDL_CLASS.Between:                 
                op_value = "BETWEEN"
                # Find right operand value
                r_val_nodes = [ast_node.expr2, ast_node.expr3]
            elif op_type in OP_AST_TO_STR.keys():
                op_value = OP_AST_TO_STR[op_type]
                # Find right operand value
                r_val_nodes = [ast_node.expr2]
            # Return A_Expr
            return self._create_A_Expr(op_value, l_val_node, r_val_nodes)

    def visit_sql(self, ast_node):
        """Transforms a SQL AST node into a Postgres parse tree.

        :param ast_node: The SQL AST node to transform.
        :type ast_node: ASDL_CLASS.sql
        :return: Root node of Postgresql parse tree
        :rtype: pglast.ast.RawStmt
        """
        stmt = self.visit(ast_node.select_stmt)
        return pglast.ast.RawStmt(stmt=stmt, stmt_location=dummy_location, stmt_len=dummy_location)

    def visit_select_stmt(self, ast_node):
        """Transforms a select_stmt AST node into a Postgres parse tree.

        :param ast_node: SQL AST node to transform.
        :type ast_node: ASDL_CLASS.select_stmt
        """
        def create_SelectStmt_without_set_op(node):
            select_result = self.visit(node.select)
            from__result = {"fromClause": self.visit(node.sql_from)}
            sql_where_result = {"whereClause": self.visit(node.sql_where)}
            sql_groupby_result = self.visit(node.sql_groupby)
            sql_orderby_result = self.visit(node.sql_orderby)
            kwargs = functools.reduce(lambda x, y: {**x, **y}, [select_result, from__result, sql_where_result, sql_groupby_result, sql_orderby_result])
            return pglast.ast.SelectStmt(all=False, op=pglast.enums.parsenodes.SetOperation.SETOP_NONE, **kwargs)
        def create_SelectStmt_with_set_op(node):
            larg = self.visit(node.select_stmt1)
            rarg = self.visit(node.select_stmt2)
            return pglast.ast.SelectStmt(all=ast_node.all, larg=larg, op=set_op_type, rarg=rarg, limitOption=pglast.enums.nodes.LimitOption.LIMIT_OPTION_DEFAULT)
        # Main logic
        if type(ast_node) == ASDL_CLASS.NoSetOp:
            result_pg_node = create_SelectStmt_without_set_op(ast_node)
        else:
            if type(ast_node) == ASDL_CLASS.Intersect:
                set_op_type = pglast.enums.parsenodes.SetOperation.SETOP_INTERSECT
            elif type(ast_node) == ASDL_CLASS.Union:
                set_op_type = pglast.enums.parsenodes.SetOperation.SETOP_UNION
            elif type(ast_node) == ASDL_CLASS.Except:
                set_op_type = pglast.enums.parsenodes.SetOperation.SETOP_EXCEPT
            else:
                raise RuntimeError(f"Bad AST Node type: {type(ast_node)}")
            result_pg_node = create_SelectStmt_with_set_op(ast_node)
        return result_pg_node

    def visit_select(self, ast_node):
        """Transforms a select AST node into set of Postgres parse tree nodes.

        :param ast_node: SQL AST node to transform.
        :type ast_node: ASDL_CLASS.select
        :return: Dictionary of Postgres parse tree node keywords to parse tree nodes
        :rtype: Dict[str, pglast.ast.Node]
        """
        pg_nodes = self.visit(ast_node.aggs)
        distinctClause = (None,) if ast_node.is_distinct else None 
        return {"distinctClause": distinctClause, 'targetList': pg_nodes}

    def visit_agg(self, ast_node):
        """Transforms a agg AST node into a Postgres parse tree.

        :param ast_node: SQL AST node to transform.
        :type ast_node: ASDL_CLASS.agg
        :return: Postgres parse tree node
        :rtype: pglast.ast.ResTarget
        """
        def is_operation_with_aggregation_function(node):
            return type(ast_node.expr) in OP_AST_TO_STR.keys() and type(node.agg_type) != ASDL_CLASS.NoAggFunc
            
        if is_operation_with_aggregation_function(ast_node):
            args=(self.visit(ast_node.expr),)
            agg_name = AGG_FUNC_AST_TO_STR[type(ast_node.agg_type)]
            return pglast.ast.FuncCall(
                agg_distinct=False,
                agg_star=False,
                agg_within_group=False,
                args=args,
                func_variadic=False,
                funcname=(pglast.ast.String(value=agg_name),)
            )
        else:
            return pglast.ast.ResTarget(val=self.visit(ast_node.expr))
        
    def visit_sql_from(self, ast_node):
        """Transforms a sql_from AST node into a Postgres parse tree.

        :param ast_node: SQL AST node to transform.
        :type ast_node: ASDL_CLASS.sql_from
        :return: List of Postgres parse tree nodes
        :rtype: List[pglast.ast.RangeVar | pglast.ast.RangeSubselect]
        """
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
                if relname in SPECIAL_POSTGRESQL_TABLES.keys():
                    pg_node = pglast.ast.RangeFunction(
                        functions=[
                            (pglast.ast.SQLValueFunction(op=SPECIAL_POSTGRESQL_TABLES[relname], typmod=-1), None)
                            ],
                        is_rowsfrom=False,
                        lateral=False,
                        ordinality=False,
                        alias=alias
                    )
                else:
                    pg_node = pglast.ast.RangeVar(inh=True,
                                                relname=relname,
                                                relpersistence="p",
                                                alias=alias)
            return pg_node
        
        def get_join_type(join_type):
            assert type(join_type) in JOIN_TYPE_AST_TO_PG, f"{type(join_type)} is not implemented yet!"
            return JOIN_TYPE_AST_TO_PG[type(join_type)]

        def join_conds_to_JoinExpr(join_conds, rangeVar_node_list):

            prev=None
            for join_cond in join_conds:
                # Get join type
                join_type = get_join_type(join_cond.join_type)
                is_join_without_cond = type(join_cond.join_type) in [ASDL_CLASS.CROSS_JOIN, ASDL_CLASS.NATURAL_JOIN]
                if prev is None:
                    larg = rangeVar_node_list.pop(0)
                else:
                    larg = prev
                rarg = rangeVar_node_list.pop(0)
                # Create quals
                quals = None if is_join_without_cond else self.visit(join_cond.expr) 
                # Create pglast join expression
                next_joinExpr = pglast.ast.JoinExpr(
                    isNatural=type(join_cond.join_type)==ASDL_CLASS.NATURAL_JOIN,
                    jointype=join_type,
                    larg=larg,
                    rarg=rarg,
                    quals=quals,
                    rtindex=0,
                )
                prev = next_joinExpr
            return tuple([prev])
        # Main logic
        # Creaet a new list instance
        range_node_list = [table_unit_to_pg_node(table_unit) for table_unit in ast_node.table_units]
        if ast_node.join_conds:
            return join_conds_to_JoinExpr(ast_node.join_conds, range_node_list)
        return tuple(range_node_list)

    def visit_sql_where(self, ast_node):
        """Transforms a sql_where AST node into a Postgres parse tree.

        :param ast_node: SQL AST node to transform.
        :type ast_node: ASDL_CLASS.sql_where
        :return: Postgres parse tree node
        :rtype: pglast.ast.A_Expr
        """
        return self.visit(ast_node.where)

    def visit_sql_groupby(self, ast_node):
        """Transforms a sql_groupby AST node into a Postgres parse tree.

        :param ast_node: SQL AST node to transform.
        :type ast_node: ASDL_CLASS.sql_groupby
        :return: Dictionary of Postgres parse tree nodes
        :rtype: Dict[str, pglast.ast.Node]
        """
        groupClause = None
        havingClause = None
        if ast_node.group_by:
            # Create Group Clause
            groupClause = tuple([self.visit(col_unit) for col_unit in ast_node.group_by])
        if ast_node.having:
            # Create Having Clause
            havingClause = self.visit(ast_node.having)
        
        return {"groupClause": groupClause, "havingClause": havingClause}

    def visit_sql_orderby(self, ast_node):
        """Transforms a sql_orderby AST node into a Postgres parse tree.

        :param ast_node: SQL AST node to transform.
        :type ast_node: ASDL_CLASS.sql_orderby
        :return: Dictionary of Postgres parse tree nodes
        :rtype: Dict[str, pglast.ast.Node]
        """
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
                node = self.visit(ast_order_by_node.expr),
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

