import unittest

from src.grammar.parser import SQLParser
from tests.parser import examples

class Test_ratsql_extension_parser(unittest.TestCase):    
    def __init__(self, *args, **kwargs):
        super(Test_ratsql_extension_parser, self).__init__(*args, **kwargs)
        self.parser = SQLParser("./src/grammar/ratsql_extended.asdl")

    
    def _test_query(self, sql):
        # Convert query to parse tree
        parse_tree = self.parser.sql2pt(sql)
        normalized_sql = self.parser.pt2sql(parse_tree)
        
        # Convert parse tree to ASDL format
        asdl_tree = self.parser.pt2ast(parse_tree)
        
        # Convert ASDL format to parse tree
        back_parse_tree = self.parser.ast2pt(asdl_tree)

        # Convert parse tree to query
        back_sql = self.parser.pt2sql(back_parse_tree)
        
        # Test that the original query and the back converted query are the same
        self.assertTrue(parse_tree == back_parse_tree, f"Parse tree is not the same.\
                            \nSQL: {sql}\
                            \nOriginal:\t{str(parse_tree)}\
                            \nReconstructed:\t{str(back_parse_tree)}")
        # Check that the original query and the back converted query are the same
        self.assertTrue(normalized_sql == back_sql, f"SQL is not the same.\
                            \nOriginal:\t{normalized_sql}\
                            \nReconstructed:\t{back_sql}")

    def test_projections(self):
        # Get example queries to test
        for query in examples.projection_queries:
            self._test_query(query)
    
    def test_aggregations(self):
        for query in examples.aggregation_queries:
            self._test_query(query)
    
    def test_selection(self):
        for query in examples.selection_queries:
            print(query)
            self._test_query(query)
    
    def test_groupby(self):
        for query in examples.groupby_queries:
            print(query)
            self._test_query(query)
    
    def test_having(self):
        for query in examples.having_queries:
            print(query)
            self._test_query(query)

    def test_orderby(self):
        for query in examples.orderby_queries:
            print(query)
            self._test_query(query)

    # Test join queries
    def test_join(self):
        for query in examples.join_queries:
            print(query)
            self._test_query(query)

if __name__ == "__main__":
    unittest.main()
