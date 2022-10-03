import asdl

from pglast import stream
from src.utils.sql import loosely_parse, set_att_value, pprint_parse_tree
from src.parser.asdl_visitor import ASDLVisitor
from src.parser.pg_visitor import PGVisitor


class BadPostgresSyntax(Exception):
    """Raised when the input value is too small"""
    pass


class SQLParser():
    """_summary_
    """
    def __init__(self, asdl_file_path): 
        self.asdl_def = asdl.parse(asdl_file_path)
        asdl.check(self.asdl_def)
    
    def sql2pt(self, sql):
        """Convert SQL to parse tree."""
        try:
            parse_tree = loosely_parse(sql)
        except Exception as e:
            if "syntax error at" in str(e.args[0].lower()):
                raise BadPostgresSyntax(sql)
        set_att_value(parse_tree, "location", None)
        return parse_tree

    def pt2ast(self, parse_tree):
        """Convert parse tree to ASDL format."""
        return PGVisitor().visit(parse_tree)

    def ast2pt(self, asdl_ast):
        """Convert ASDL format to parse tree."""
        return ASDLVisitor().visit(asdl_ast)

    def pt2sql(self, parse_tree):
        """Convert parse tree to SQL."""
        return stream.RawStream()(parse_tree)
    
    def sql2ast(self, sql):
        """Convert SQL to ASDL format."""
        return self.pt2ast(self.sql2pt(sql))
    
    
if __name__ == "__main__":
    sql_query = "SELECT T2.Lname FROM DEPARTMENT AS T1 JOIN FACULTY AS T2 ON T1.DNO  =  T3.DNO JOIN MEMBER_OF AS T3 ON T2.FacID  =  T3.FacID WHERE T1.DName  =  'Computer Science'"
    parser = SQLParser("./src/grammar/ratsql_extended.asdl")
    # Parse string and Generate Parse tree
    parse_tree = parser.sql2pt(sql_query)
    print("\n Parsed parse tree: \n")
    pprint_parse_tree(parse_tree(skip_none=True))
    # Transform parse tree into ASDL AST
    asdl_ast = parser.pt2ast(parse_tree)
    print("\n Parsed ASDL AST: \n")
    print(asdl_ast)
    # Reconstruct parse tree from ASDL AST
    back_parse_tree = parser.ast2pt(asdl_ast)
    print("\n Reconstructed parse tree: \n")
    pprint_parse_tree(back_parse_tree(skip_none=True))
    # Reconstruct SQL string from parse tree
    print(f"Original      SQL:{parser.pt2sql(parse_tree)}")
    print(f"Reconstructed SQL:{parser.pt2sql(back_parse_tree)}")
    
    stop =1
