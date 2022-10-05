import unittest

from src.preprocess.relations import SchemaRelations, inverse
from tests.relation_linker.examples import test_example1
from src.preprocess.relation_extractor import get_relation_bw_schema_entities


class Test_schema_schema_linking(unittest.TestCase):    
    def __init__(self, *args, **kwargs):
        super(Test_schema_schema_linking, self).__init__(*args, **kwargs)

    def _comprehensive_check(self, entity1, entity2, gold_relation, inverse_gold_relation):
        relation = get_relation_bw_schema_entities(entity1, entity2)
        inverse_relation = get_relation_bw_schema_entities(entity2, entity1)
        self.assertEqual(relation, gold_relation)
        self.assertEqual(inverse(relation), inverse_gold_relation)
        self.assertEqual(inverse_relation, inverse_gold_relation)
        self.assertEqual(inverse(inverse_relation), gold_relation)
        
    def test_table_table_linking(self):
        _, schema = test_example1()
        singer = schema.get_table("singer")
        singer_in_concert = schema.get_table("singer_in_concert")
        self._comprehensive_check(singer, singer_in_concert, SchemaRelations.TT_FOREIGN_KEY_BACKWARD, SchemaRelations.TT_FOREIGN_KEY_FORWARD)

    def test_table_column_linking(self):
        _, schema = test_example1()
        # Check primary key
        concert = schema.get_table("concert")
        concert_id = concert.get_column("concert_ID")
        self._comprehensive_check(concert, concert_id, SchemaRelations.TC_PRIMARY_KEY, SchemaRelations.CT_PRIMARY_KEY)

        # Check foreign key
        concert = schema.get_table("concert")
        concert_stadium_id = concert.get_column("Stadium_ID")
        self._comprehensive_check(concert, concert_stadium_id, SchemaRelations.TC_FOREIGN_KEY, SchemaRelations.CT_FOREIGN_KEY)

        # Check normal column
        concert = schema.get_table("concert")
        concert_theme = concert.get_column("Theme")
        self._comprehensive_check(concert, concert_theme, SchemaRelations.TC_CONTAINS_AND_NON_KEY, SchemaRelations.CT_CONTAINS_AND_NON_KEY)

        # Check column in other table
        concert = schema.get_table("concert")
        stadium = schema.get_table("stadium")
        stadium_name = stadium.get_column("Name")
        self._comprehensive_check(concert, stadium_name, SchemaRelations.TC_DEFAULT, SchemaRelations.CT_DEFAULT)


    def test_column_column_linking(self):
        _, schema = test_example1()
        pass
        # Check in same table
        stadium = schema.get_table("stadium")
        stadium_name = stadium.get_column("Name")
        stadium_capacity = stadium.get_column("Capacity")
        self._comprehensive_check(stadium_name, stadium_capacity, SchemaRelations.CC_SAME_TABLE, SchemaRelations.CC_SAME_TABLE)
        # Check identical column
        self._comprehensive_check(stadium_name, stadium_name, SchemaRelations.CC_IDENTICAL, SchemaRelations.CC_IDENTICAL)
        
        # Check foreign key
        stadium = schema.get_table("stadium")
        stadium_stadium_id = stadium.get_column("Stadium_ID")
        concert = schema.get_table("concert")
        concert_stadium_id = concert.get_column("Stadium_ID")
        self._comprehensive_check(stadium_stadium_id, concert_stadium_id, SchemaRelations.CC_FOREIGN_KEY_BACKWARD, SchemaRelations.CC_FOREIGN_KEY_FORWARD)

        # Check default
        concert_id = concert.get_column("concert_ID")
        self._comprehensive_check(stadium_name, concert_id, SchemaRelations.CC_DEFAULT, SchemaRelations.CC_DEFAULT)


if __name__ == "__main__":
    unittest.main()
