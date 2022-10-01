import os 
import pglast
from src.grammar.class_generator import ASDL2Class

dir_path = os.path.dirname(os.path.realpath(__file__))
grammar_file_path = os.path.join(dir_path, "../grammar/ratsql_extended.asdl")

ASDL_CLASS = ASDL2Class(grammar_file_path)()

# Mapping Aggregation functions
AGG_FUNC_STR_TO_AST = {
    "none": ASDL_CLASS.NoAggFunc,
    "max": ASDL_CLASS.Max,
    "min": ASDL_CLASS.Min,
    "count": ASDL_CLASS.Count,
    "sum": ASDL_CLASS.Sum,
    "avg": ASDL_CLASS.Avg,
}
AGG_FUNC_AST_TO_STR = {value: key for key, value in AGG_FUNC_STR_TO_AST.items()}

# Mapping Join types
JOIN_TYPE_PG_TO_AST = {
    pglast.enums.nodes.JoinType.JOIN_INNER: ASDL_CLASS.INNER_JOIN,
    pglast.enums.nodes.JoinType.JOIN_LEFT: ASDL_CLASS.LEFT_OUTER_JOIN,
    pglast.enums.nodes.JoinType.JOIN_RIGHT: ASDL_CLASS.RIGHT_OUTER_JOIN,
    pglast.enums.nodes.JoinType.JOIN_FULL: ASDL_CLASS.FULL_OUTER_JOIN,
}
JOIN_TYPE_AST_TO_PG = {val: key for key, val in JOIN_TYPE_PG_TO_AST.items()}
JOIN_TYPE_AST_TO_PG.update({ASDL_CLASS.CROSS_JOIN: pglast.enums.nodes.JoinType.JOIN_INNER})
JOIN_TYPE_AST_TO_PG.update({ASDL_CLASS.NATURAL_JOIN: pglast.enums.nodes.JoinType.JOIN_INNER})

# Mapping operation types
BOOL_OP_TYPE_PG_TO_AST = {
    pglast.enums.primnodes.BoolExprType.NOT_EXPR: ASDL_CLASS.Not,
    pglast.enums.primnodes.BoolExprType.AND_EXPR: ASDL_CLASS.And,
    pglast.enums.primnodes.BoolExprType.OR_EXPR: ASDL_CLASS.Or
}
BOOL_OP_TYPE_AST_TO_PG = {val: key for key, val in BOOL_OP_TYPE_PG_TO_AST.items()}

# Mapping Logical Operations
OP_STR_TO_AST = {
    "=": ASDL_CLASS.Eq,
    ">": ASDL_CLASS.Gt,
    "<": ASDL_CLASS.Lt,
    ">=": ASDL_CLASS.Ge,
    "<=": ASDL_CLASS.Le,
    "<>": ASDL_CLASS.Ne,
    "~~": ASDL_CLASS.Like,
    "!~~": ASDL_CLASS.NotLike,
    "-": ASDL_CLASS.Minus,
    "+": ASDL_CLASS.Plus,
    "*": ASDL_CLASS.Times,
    "/": ASDL_CLASS.Divide,
}
OP_AST_TO_STR = {val: key for key, val in OP_STR_TO_AST.items()}

# Mapping Logical Operation types
OP_TO_A_Expr_Kind = {
    "BETWEEN": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_BETWEEN,
    "=": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
    ">": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
    "<": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
    ">=": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
    "<=": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
    "<>": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
    "~~": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_LIKE,
    "!~~": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_LIKE,
    "In": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_IN,
    "-": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
    "+": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
    "*": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
    "/": pglast.enums.parsenodes.A_Expr_Kind.AEXPR_OP,
}

dummy_location = 0

SPECIAL_POSTGRESQL_TABLES = {"SVFOP_USER": pglast.enums.SQLValueFunctionOp.SVFOP_USER}


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
