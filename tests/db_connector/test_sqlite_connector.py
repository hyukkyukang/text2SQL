import unittest

import src.utils.file as file_utils
from src.db_connection.sqlite_connector import SqliteConnector

class Test_sqlite_connector(unittest.TestCase):
    def __init__(self, *args, **kwargs):
        super(Test_sqlite_connector, self).__init__(*args, **kwargs)
        self.db_file_paths = self._get_sqlite_db_file_paths(['datasets/spider/database', 'datasets/kaggle-dbqa/databases'])
       
    def _get_sqlite_db_file_paths(self, db_dir_paths):
        db_file_paths = []
        for db_dir_path in db_dir_paths:
            db_file_paths.extend(file_utils.get_files_in_all_sub_directories(db_dir_path, lambda f: f.endswith('.sqlite')))
        return db_file_paths
   
    def test_connection(self):
        self.assertGreaterEqual(len(self.db_file_paths), 1)
        for db_file_path in self.db_file_paths:
            db_connector = SqliteConnector(db_file_path)
            self.assertIsNotNone(db_connector.con)
        print(f"Test passed with {len(self.db_file_paths)} databases")
    
    def test_fetching_tables(self):
        self.assertGreaterEqual(len(self.db_file_paths), 1)
        for db_file_path in self.db_file_paths:
            db_connector = SqliteConnector(db_file_path)
            table_names = db_connector.fetch_table_names()
            self.assertGreaterEqual(len(table_names), 1)
        print(f"Test passed with {len(self.db_file_paths)} databases")
    
    def test_fetching_columns(self):
        self.assertGreaterEqual(len(self.db_file_paths), 1)
        for db_file_path in self.db_file_paths:
            db_connector = SqliteConnector(db_file_path)
            table_names = db_connector.fetch_table_names()
            for table_name in table_names:
                column_names = db_connector.fetch_column_names(table_name)
                self.assertGreaterEqual(len(column_names), 1)
        print(f"Test passed with {len(self.db_file_paths)} databases")
    
    def test_fetching_column_types(self):
        self.assertGreaterEqual(len(self.db_file_paths), 1)
        for db_file_path in self.db_file_paths:
            db_connector = SqliteConnector(db_file_path)
            table_names = db_connector.fetch_table_names()
            for table_name in table_names:
                column_types = db_connector.fetch_column_types(table_name)
                self.assertGreaterEqual(len(column_types), 1)
        print(f"Test passed with {len(self.db_file_paths)} databases")
   
    def test_fetching_primary_keys(self):
        self.assertGreaterEqual(len(self.db_file_paths), 1)
        for db_file_path in self.db_file_paths:
            db_connector = SqliteConnector(db_file_path)
            table_names = db_connector.fetch_table_names()
            for table_name in table_names:
                primary_keys = db_connector.fetch_primary_keys(table_name)
        print(f"Test passed with {len(self.db_file_paths)} databases")
        
    def test_fetching_foreign_keys(self):
        self.assertGreaterEqual(len(self.db_file_paths), 1)
        for db_file_path in self.db_file_paths:
            db_connector = SqliteConnector(db_file_path)
            table_names = db_connector.fetch_table_names()
            for table_name in table_names:
                foreign_key_pairs = db_connector.fetch_foreign_keys(table_name)
                if foreign_key_pairs:
                    for foreign_key_pair in foreign_key_pairs:
                        self.assertEqual(len(foreign_key_pair), 2)
        print(f"Test passed with {len(self.db_file_paths)} databases")
   
if __name__ == "__main__":
    unittest.main()
