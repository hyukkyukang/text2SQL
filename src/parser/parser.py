import asdl
import src.utils as utils

from pglast import stream
from src.parser.asdl_visitor import ASDLVisitor
from src.parser.pg_visitor import PGVisitor

class SQLParser():
    """_summary_table = {}
    """
    def __init__(self, asdl_file_path): 
        self.asdl_def = asdl.parse(asdl_file_path)
        asdl.check(self.asdl_def)
    
    def sql2pt(self, sql):
        """Convert SQL to parse tree."""
        parse_tree = utils.sql.loosely_parse(sql)
        utils.sql.set_att_value(parse_tree, "location", None)
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
    
if __name__ == "__main__":
    # sql_query = "SELECT date ,  (max_temperature_f - min_temperature_f) - avg_temperature_f FROM weather WHERE 1 = c "
    sql_query = "SELECT date < 1 FROM weather WHERE (1 = c) = True order by date*2"
    parser = SQLParser("./src/grammar/ratsql.asdl")
    # Parse string and Generate Parse tree
    parse_tree = parser.sql2pt(sql_query)
    print("\n Parsed parse tree: \n")
    utils.sql.pprint_parse_tree(parse_tree(skip_none=True))
    # Transform parse tree into ASDL AST
    asdl_ast = parser.pt2ast(parse_tree)
    print("\n Parsed ASDL AST: \n")
    print(asdl_ast)
    # Reconstruct parse tree from ASDL AST
    back_parse_tree = parser.ast2pt(asdl_ast)
    print("\n Reconstructed parse tree: \n")
    utils.sql.pprint_parse_tree(back_parse_tree(skip_none=True))
    # Reconstruct SQL string from parse tree
    print(f"Original      SQL:{parser.pt2sql(parse_tree)}")
    print(f"Reconstructed SQL:{parser.pt2sql(back_parse_tree)}")
    
    stop =1

    
# TODO: cond make left and right invariant
# TODO: make val_unit and cond both possible?