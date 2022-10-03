from __future__ import annotations
from typing import List, Any

import abc
import enum
import attrs
import torch


class DataTypes(enum.Enum):
    TEXT = 1
    NUMBER = 2
    FLOAT = 3
    TIME = 4
    BOOL = 5
    ETC = 6


@attrs.define
class Column:
    name: str
    name_tokens: List[str]
    name_tensor: torch.Tensor
    data_type: str
    table: Table
    is_primary_key: bool
    foreign_key_forward: Column
    foreign_key_backward: Column
    
    @staticmethod
    def data_type_str_to_enum(data_type_str: str) -> DataTypes:
        data_type_str = data_type_str.lower()
        if data_type_str == "text":
            return DataTypes.TEXT
        elif data_type_str in ["number", "int"]:
            return DataTypes.NUMBER
        elif data_type_str == "time":
            return DataTypes.TIME
        elif data_type_str in ["bool", "boolean"]:
            return DataTypes.BOOL
        elif data_type_str == "others":
            return DataTypes.ETC
        else:
            raise ValueError(f"Unknown data type: {data_type_str}")

@attrs.define
class Table:
    db_id: str
    name: str
    name_tokens: List[str]
    name_tensor: torch.Tensor
    columns: List[Column]
    
    def __getitem__(self, index):
        return self.columns[index]
    
    def __len__(self):
        return len(self.columns)


@attrs.define
class Schema:
    db_id: str
    tables: List[Table]
    
    def __getitem__(self, index):
        return self.tables[index]
    
    def __len__(self):
        return self.table_len()
    
    def column_len(self):
        return sum([len(table) for table in self.tables])
    
    def table_len(self):
        return len(self.tables)
       
    def get_column(self, table_name: str, column_name: str):
        for table in self.tables:
            if table.name == table_name:
                for column in table:
                    if column.name == column_name:
                        return column
        return None
       
class SchemaGenerator:
    """Wrapper class for generating a schema data structure from a dataset"""
    schema_cache = {}
    @staticmethod
    def get_schema(db_id: str) -> Schema:
        return SchemaGenerator.schema_cache.get(db_id, None)
    
    @staticmethod
    def db_to_schema(db_connector, tokenizer) -> Schema:
        def add_foreign_key_relations(schema: Schema):
            for table in schema.tables:
                foreign_key_pairs = db_connector.fetch_foreign_keys(table.name)
                for column in table.columns:
                    # Find foreign key constraints
                    for src_col_ref, dst_col_ref in foreign_key_pairs:
                        src_col_name = src_col_ref.split(".")[-1]
                        dst_tab_name = dst_col_ref.split(".")[0]
                        dst_col_name = dst_col_ref.split(".")[-1]
                        if column.name == src_col_name:
                            # Get the destination column
                            dst_column = schema.get_column(dst_tab_name, dst_col_name)
                            # Add source column
                            column.foreign_key_forward.append(dst_column)
                            # Add destination column
                            dst_column.foreign_key_backward.append(column)
            return schema
        

        db_id = db_connector.db_name
        table_names = db_connector.fetch_table_names()
        # Create Table objects
        tables = []
        for table_name in table_names:
            table_tokenized_result = tokenizer(table_name, add_special_tokens=False)
            table_name_tokens = tokenizer.convert_ids_to_tokens(table_tokenized_result["input_ids"])
            table_name_tensor = torch.tensor(table_tokenized_result["input_ids"])
            table = Table(db_id=db_id, name=table_name, name_tokens=table_name_tokens, name_tensor=table_name_tensor, columns=[])
            
            # Get column information
            column_names = db_connector.fetch_column_names(table_name)
            column_types = list(map(Column.data_type_str_to_enum, db_connector.fetch_column_types(table_name)))
            primary_columns = db_connector.fetch_primary_keys(table_name)
            
            # Create Column objects
            columns = []
            for col_name, col_type in zip(column_names, column_types):                        
                col_tokenized_result = tokenizer(col_name, add_special_tokens=False)
                col_name_tokens = tokenizer.convert_ids_to_tokens(col_tokenized_result["input_ids"])
                col_name_tensor = torch.tensor(col_tokenized_result["input_ids"])
                column = Column(name=col_name, name_tokens=col_name_tokens, name_tensor=col_name_tensor, data_type=col_type, table=table,
                                is_primary_key=col_name in primary_columns, 
                                foreign_key_forward=[], 
                                foreign_key_backward=[])
                columns.append(column)
                
            # Save columns in the table object
            table.columns = columns
            tables.append(table)
        # Create Schema object
        schema = Schema(db_id=db_id, tables=tables)
        # Add foreign key relations
        schema = add_foreign_key_relations(schema)
        # Save cache
        SchemaGenerator.schema_cache[db_id] = schema
        return schema
    
    @staticmethod
    def load_schema_from_db(db_connector, tokenizer):
        schema = SchemaGenerator.db_to_schema(db_connector, tokenizer)
        return schema
    
    @staticmethod
    @abc.abstractmethod
    def meta_data_to_schema(datum: Any, tokenizer: Any) -> Schema:
        pass
    
    @staticmethod
    @abc.abstractmethod
    def load_schema_from_meta_data_file(meta_data_file_path: str) -> None:
        pass
    
if __name__ == "__main__":
    from src.db_connection.sqlite_connector import SqliteConnector
    from transformers import AutoTokenizer
    tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
    db_connector = SqliteConnector("datasets/spider/database/concert_singer/concert_singer.sqlite")
    schema = SchemaGenerator.db_to_schema(db_connector, tokenizer)
    stop =1
    