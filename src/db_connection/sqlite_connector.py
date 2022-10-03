import sqlite3

from typing import List
from src.db_connection.connector import DBConnector

class SqliteConnector(DBConnector):
    def __init__(self, db_path: str):
        super().__init__()
        self.connect(db_path)
        self.cur = self.con.cursor()
        self.db_name = db_path.split("/")[-1].split(".")[0]

    def connect(self, db_path: str):
        self.con = sqlite3.connect(db_path)
        return self.con

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
        # self.execute(f"SELECT l.name FROM pragma_table_info('{table_ref}') as l WHERE l.pk = 2;")
        self.execute(f"SELECT * FROM pragma_foreign_key_list('{table_ref}');")
        return [(f"{table_ref}.{row[3]}", f"{row[2]}.{row[4]}") for row in self.fetchall()]