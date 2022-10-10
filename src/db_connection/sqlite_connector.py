import sqlite3

from typing import List
from src.db_connection.connector import DBConnector


class SqliteConnector(DBConnector):   
    connector_cache = DBConnector.connector_cache
    def __init__(self, db_path: str):
        super(SqliteConnector, self).__init__(db_id=db_path.split("/")[-1].split(".")[0])
        self.connect(db_path)

    def __new__(cls, db_path: str):
        db_id = db_path.split("/")[-1].split(".")[0]
        return super(SqliteConnector, cls).__new__(cls, db_id=db_id)
    def connect(self, db_path: str):
        self.conn = sqlite3.connect(db_path)
        self.cur = self.conn.cursor()

    def fetch_table_names(self) -> List[str]:
        self.execute("SELECT name FROM sqlite_master WHERE type='table';")
        return [row[0] for row in self.fetchall()]
    
    def fetch_column_names(self, table_ref: str) -> List[str]:
        self.execute("PRAGMA table_info({})".format(table_ref))
        return [str(col[1]) for col in self.fetchall()]
    
    def fetch_column_types(self, table_ref: str) -> List[str]:
        self.execute("PRAGMA table_info({})".format(table_ref))
        return [str(col[2]) for col in self.fetchall()]

    def fetch_primary_keys(self, table_ref: str) -> List[str]:
        self.execute(f"SELECT l.name FROM pragma_table_info('{table_ref}') as l WHERE l.pk = 1;")
        return [row[0] for row in self.fetchall()]
        
    def fetch_foreign_keys(self, table_ref: str) -> List[str]:
        self.execute(f"SELECT * FROM pragma_foreign_key_list('{table_ref}');")
        return [(f"{table_ref}.{row[3]}", f"{row[2]}.{row[4]}") for row in self.fetchall()]