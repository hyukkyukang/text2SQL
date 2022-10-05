import abc
import traceback

from typing import Any, List

class DBConnector:
    # Static attributes
    connector_cache = {}
    def __init__(self, db_id:str):
        self.db_id = db_id    
        self.conn = None
        self.cur = None

    def __new__(cls, db_id):
        if not db_id in DBConnector.connector_cache.keys():
            DBConnector.connector_cache[db_id]= super(DBConnector, cls).__new__(cls)
        return DBConnector.connector_cache[db_id]

    def execute(self, sql: str) -> List[Any]:
        return self.cur.execute(sql)

    def fetchall(self) -> List[Any]:
        return self.cur.fetchall()

    def fetchone(self) -> List[Any]:
        return self.cur.fetchone()

    def close(self) -> None:
        self.conn.close()

    def __enter__(self):
        return self.conn

    def __exit__(self, exc_type, exc_value, tb):
        if exc_type is not None:
            traceback.print_exception(exc_type, exc_value, tb)
        self.conn.close()
        return True

    @abc.abstractmethod
    def connect(self, *args, **kwargs) -> None:
        pass

    @abc.abstractclassmethod
    def fetch_table_names(self)-> List[str]:
        pass
    
    @abc.abstractclassmethod
    def fetch_column_names(self, table_ref: str) -> List[str]:
        pass

    @abc.abstractclassmethod
    def fetch_column_types(self, table_ref: str) -> List[str]:
        pass

    @abc.abstractclassmethod
    def fetch_primary_keys(self, table_ref: str) -> List[str]:
        pass
    
    @abc.abstractclassmethod
    def fetch_foreign_keys(self, table_ref: str) -> List[str]:
        pass