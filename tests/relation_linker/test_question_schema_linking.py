import unittest

from src.preprocess.relations import SchemaLinkingRelations, inverse
from tests.relation_linker.examples import test_example1
from src.preprocess.relation_extractor import get_relation_bw_token_schema

# test_example1 = test_example1()

class Test_question_schema_linking(unittest.TestCase):    
    def __init__(self, *args, **kwargs):
        super(Test_question_schema_linking, self).__init__(*args, **kwargs)

    def test_exact_match_column(self) -> None:
        _, schema = test_example1()
        # Check positive case
        relation = get_relation_bw_token_schema("location", schema.get_column("stadium", "Location"))
        self.assertEqual(relation, SchemaLinkingRelations.QC_EXATCH_MATCH)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.CQ_EXATCH_MATCH)
        # Check negative case
        relation = get_relation_bw_token_schema("staidum", schema.get_column("stadium", "Location"))
        self.assertEqual(relation, SchemaLinkingRelations.QC_DEFAULT)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.CQ_DEFAULT)

    def test_exact_match_table(self) -> None:
        _, schema = test_example1()
        # Check positive case
        relation = get_relation_bw_token_schema("stadium", schema.get_table("stadium"))
        self.assertEqual(relation, SchemaLinkingRelations.QT_EXATCH_MATCH)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.TQ_EXATCH_MATCH)
        # Check negative case
        relation = get_relation_bw_token_schema("location", schema.get_table("stadium"))
        self.assertEqual(relation, SchemaLinkingRelations.QT_DEFAULT)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.TQ_DEFAULT)

    def test_partial_matching_column(self) -> None:
        _, schema = test_example1()
        # Check positive case
        relation = get_relation_bw_token_schema("name", schema.get_column("singer", "Song_Name"))
        self.assertEqual(relation, SchemaLinkingRelations.QC_PARTIAL_MATCH)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.CQ_PARTIAL_MATCH)
        # Check negative case
        relation = get_relation_bw_token_schema("staidum", schema.get_column("stadium", "Location"))
        self.assertEqual(relation, SchemaLinkingRelations.QC_DEFAULT)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.CQ_DEFAULT)

    def test_partial_matching_table(self) -> None:
        _, schema = test_example1()
        # Check positive case
        relation = get_relation_bw_token_schema("concert", schema.get_table("singer_in_concert"))
        self.assertEqual(relation, SchemaLinkingRelations.QT_PARTIAL_MATCH)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.TQ_PARTIAL_MATCH)
        # Check negative case
        relation = get_relation_bw_token_schema("stadium", schema.get_table("singer_in_concert"))
        self.assertEqual(relation, SchemaLinkingRelations.QT_DEFAULT)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.TQ_DEFAULT)

    def test_value_matching(self) -> None:
        _, schema = test_example1()
        # Check positive case
        relation = get_relation_bw_token_schema("Park", schema.get_column("stadium", "Location"))
        self.assertEqual(relation, SchemaLinkingRelations.QC_VALUE_MATCH)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.CQ_VALUE_MATCH)
        # Check negative case
        relation = get_relation_bw_token_schema("staidum", schema.get_column("stadium", "Location"))
        self.assertEqual(relation, SchemaLinkingRelations.QC_DEFAULT)
        self.assertEqual(inverse(relation), SchemaLinkingRelations.CQ_DEFAULT)


if __name__ == "__main__":
    unittest.main()
