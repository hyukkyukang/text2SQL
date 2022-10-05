import psycopg2
from typing import List

from src.db_connection.connector import DBConnector

class PostgresConnector(DBConnector):
    connector_cache = DBConnector.connector_cache
    def __init__(self, user_id: str, passwd: str, host: str, port: str, db_id: str):
        super(PostgresConnector, self).__init__(db_id=db_id)
        self.connect(user_id, passwd, host, port, db_id)
        
        
    def __new__(cls, user_id, passwd, host, port, db_id):
        return super(PostgresConnector, cls).__new__(cls)
        
    def connect(self, user_id, passwd, host, port, db_id):
        self.conn = psycopg2.connect(f"user={user_id} password={passwd} host={host} port={port} dbname={db_id}")
        self.cur = self.conn.cursor()

    def fetch_table_names(self) -> List[str]:
        sql = """
            SELECT *
            FROM pg_catalog.pg_tables
            WHERE schemaname != 'pg_catalog' AND 
                  schemaname != 'information_schema';
        """
        self.cursor.execute(sql)
        tables = [f"{str(table[0].lower())}.{str(table[1].lower())}".replace("public.", "")
                  for table in self.cursor.fetchall()]
        return tables

    def fetch_column_names(self, table_ref: str) -> List[str]:
        def table_name_contains_schema(table_ref):
            return "." in table_ref 
        if table_name_contains_schema(table_ref):
            table_schema = table_ref.split(".")[0]
            table_name = table_ref.split(".")[1]
        else:
            table_schema = "public"
            table_name = table_ref
        sql = f"""
            SELECT *
            FROM
                information_schema.columns
            WHERE
                table_schema = '{table_schema}'
                AND table_name = '{table_name}';
            """
        self.execute(sql)
        return [str(col[3].lower()) for col in self.fetchall()]
    
    def fetch_column_types(self, table_ref: str) -> List[str]:
        def table_name_contains_schema(table_ref):
            return "." in table_ref 
        if table_name_contains_schema(table_ref):
            table_schema = table_ref.split(".")[0]
            table_name = table_ref.split(".")[1]
        else:
            table_schema = "public"
            table_name = table_ref
        sql = f"""
            SELECT *
            FROM
                information_schema.columns
            WHERE
                table_schema = '{table_schema}'
                AND table_name = '{table_name}';
            """
        self.execute(sql)
        return [str(col[7].lower()) for col in self.fetchall()]
