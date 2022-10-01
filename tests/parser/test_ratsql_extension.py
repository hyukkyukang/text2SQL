import os
import json
import unittest

from src.parser.parser import SQLParser
from tests.parser import examples

class Test_ratsql_extension_parser(unittest.TestCase):    
    def __init__(self, *args, **kwargs):
        super(Test_ratsql_extension_parser, self).__init__(*args, **kwargs)
        self.parser = SQLParser("./src/grammar/ratsql_extended.asdl")
        self.queries_with_syntax_error = []


    def _test_query(self, sql):
        try:
            # Convert query to parse tree
            parse_tree = self.parser.sql2pt(sql)
            normalized_sql = self.parser.pt2sql(parse_tree)
            
            # Convert parse tree to ASDL format
            asdl_tree = self.parser.pt2ast(parse_tree)
            
            # Convert ASDL format to parse tree
            back_parse_tree = self.parser.ast2pt(asdl_tree)

            # Convert parse tree to query
            back_sql = self.parser.pt2sql(back_parse_tree)
        except Exception as e:
            print("Error parsing query: {}".format(sql))
            if "syntax error at" in e.args[0]:
                print(f"SQL has syntax error:{sql}")
                self.queries_with_syntax_error.append(sql)
                return
            else:
                raise e
        
        # Test that the original query and the back converted query are the same
        self.assertTrue(parse_tree == back_parse_tree, f"Parse tree is not the same.\
                            \nSQL: {sql}\
                            \nOriginal:\t{str(parse_tree(skip_none=True))}\
                            \nReconstructed:\t{str(back_parse_tree(skip_none=True))}")
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
            self._test_query(query)
    
    def test_groupby(self):
        for query in examples.groupby_queries:
            self._test_query(query)
    
    def test_having(self):
        for query in examples.having_queries:
            self._test_query(query)

    def test_orderby(self):
        for query in examples.orderby_queries:
            self._test_query(query)

    # Test join queries
    def test_join(self):
        for query in examples.join_queries:
            self._test_query(query)

    def test_nested(self):
        for query in examples.nested_queries:
            print(query)
            self._test_query(query)

    
    def test_set_op(self):
        for query in examples.set_queries:
            self._test_query(query)

    def test_spider_dataset(self):
        dir_path = "./datasets/spider/"
        file_names = ["dev.json", "train_spider.json", "train_others.json"]
        for file_name in file_names:
            with open(os.path.join(dir_path, file_name)) as f:
                spider_data = json.load(f)
                for idx, datum in enumerate(spider_data):
                    print(f"{file_name}: Testing query {idx}: {datum['query']}")
                    self._test_query(datum["query"])
        
        print("")
        print(f"Number of queries with syntax error:{len(self.queries_with_syntax_error)}")
        for idx, query in enumerate(self.queries_with_syntax_error):
            print(f"{idx}: {query}")

if __name__ == "__main__":
    unittest.main()
