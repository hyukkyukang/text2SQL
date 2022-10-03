import abc
import attrs
import traceback

from typing import Any, List

@attrs.define
class DBConnector:
    conn: Any = attrs.field(default=None)
    cur: Any = attrs.field(default=None)
    db_name: str = attrs.field(default=None)
    
    def execute(self, sql: str):
        return self.cur.execute(sql)
    
    def fetchall(self):
        return self.cur.fetchall()
    
    def fetchone(self):
        return self.cur.fetchone()
    
    def close(self):
        self.con.close()
        
    def __enter__(self):
        return self.con

    def __exit__(self, exc_type, exc_value, tb):
        if exc_type is not None:
            traceback.print_exception(exc_type, exc_value, tb)
        self.con.close()
        return True
    
    @abc.abstractmethod
    def connect(self, *args, **kwargs):
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