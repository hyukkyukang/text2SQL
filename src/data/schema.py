import abc
import enum
import attrs
import torch
from typing import List, Any

import src.utils.list as list_utils

class DataTypes(enum.Enum):
    TEXT = 1
    NUMBER = 2
    FLOAT = 3
    TIME = 4
    BOOL = 5
    ETC = 6

@attrs.define
class Column:
    ori_name: str
    name: str
    name_tokens: List[str]
    name_tensor: torch.Tensor
    data_type: str
    table: Any
    is_primary_key: bool
    foreign_key_forward: Any
    foreign_key_backward: Any

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
    @property
    def ref_name(self):
        return f"{self.table.name}.{self.name}"

    def __eq__(self, other):
        return id(self) == id(other)

@attrs.define
class Table:
    db_id: str
    ori_name: str
    name: str
    name_tokens: List[str]
    name_tensor: torch.Tensor
    columns: List[Column] = attrs.field(factory=list)
    schema: Any = attrs.field(default=None)
    
    def __getitem__(self, index):
        return self.columns[index]
    
    def __len__(self):
        return len(self.columns)
    
    def add_column(self, column: Column) -> None:
        self.columns.append(column)
        column.table = self
    def add_columns(self, columns: List[Column]) -> None:
        for column in columns:
            self.add_column(column)

    def get_column(self, col_name):
        for column in self.columns:
            if column.name == col_name:
                return column
        raise ValueError(f"Column {col_name} not found in table {self.name}")

    def get_foreign_key_forwards(self) -> List[Column]:
        return list_utils.flatten_list([column.foreign_key_forward for column in self.columns if column.foreign_key_forward])
    
    def get_foreign_key_backwards(self) -> List[Column]:
        return list_utils.flatten_list([column.foreign_key_backward for column in self.columns if column.foreign_key_backward])
        
    def get_primary_keys(self) -> List[Column]:
        return list(filter(lambda x: x.is_primary_key, self.columns))

    def __eq__(self, other):
        return id(self) == id(other)


@attrs.define
class Schema:
    # Class attributes
    schema_cache = {}
    # Init attributes
    db_id: str = attrs.field()
    tables: List[Table] = attrs.field(factory=list)
    db_connector: Any = attrs.field(default=None)
    tokenizer: Any = attrs.field(default=None)
    
    @staticmethod
    def has_cache(db_id: str) -> bool:
        return db_id in Schema.schema_cache.keys()

    @staticmethod
    def get_cached_object(db_id: str) -> bool:
        assert Schema.has_cache(db_id), f"Schema {db_id} not found in cache"
        return Schema.schema_cache[db_id]

    def __attrs_post_init__(self):
        # Link tables to the schema
        for table in self.tables:
            table.schema = self

    def __new__(cls, db_id: str, tables: List[Table]=None, db_connector: Any = None, tokenizer: Any = None):
        if db_id not in cls.schema_cache:
            cls.schema_cache[db_id] = super().__new__(cls)
        return cls.schema_cache[db_id]

    def __getitem__(self, index):
        return self.tables[index]
    
    def __len__(self):
        return self.table_len() + self.column_len()
    
    @property
    def tables_and_columns(self):
        return self.tables + self.columns
    
    @property
    def columns(self):
        return list_utils.flatten_list([table.columns for table in self.tables])
    
    @property
    def tensor_repr(self):
        sep_tok_id = self.tokenizer.convert_tokens_to_ids(self.tokenizer.sep_token)
        sep_tok_tensor = torch.tensor([sep_tok_id])
        # Get all tables
        table_tensors = torch.cat([torch.cat([table.name_tensor, sep_tok_tensor]) for table in self.tables])
        # Get all columns
        column_tensors = torch.cat([torch.cat([column.name_tensor, sep_tok_tensor]) for column in self.columns])
        return torch.cat([table_tensors,column_tensors])
    
    @property
    def relation_matrix(self):
        # Get all tables
        matrix = relation_extractor.get_relation_matrix_for_schemas(self.tables_and_columns)
        return torch.from_numpy(matrix)
    
    @property
    def column_len(self):
        return sum([len(table) for table in self.tables])
    
    @property
    def table_len(self):
        return len(self.tables)
    
    def add_table(self, table: Table):
        self.tables.append(table)
        table.schema = self
    def add_tables(self, tables: List[Table]):
        for table in tables:
            table.schema = self
       
    def get_table(self, table_name: str):
        for table in self.tables:
            if table.name == table_name:
                return table
        raise ValueError(f"Table {table_name} not found in schema {self.db_id}")
    
    def get_column(self, table_name: str, column_name: str):
        for table in self.tables:
            if table.name == table_name:
                for column in table:
                    if column.name == column_name:
                        return column
        raise ValueError(f"Column {column_name} not found in table {table_name} in schema {self.db_id}")

class SchemaGenerator:
    """Wrapper class for generating a schema data structure from a dataset"""
    @staticmethod
    def db_to_schema(db_connector, tokenizer) -> Schema:
        print("into db_to_schema")
        def add_foreign_key_relations(schema: Schema):
            for table in schema.tables:
                foreign_key_pairs = db_connector.fetch_foreign_keys(table.name)
                # Find foreign key constraints
                for src_col_ref, dst_col_ref in foreign_key_pairs:
                    src_col_name = src_col_ref.split(".")[-1]
                    dst_tab_name = dst_col_ref.split(".")[0]
                    dst_col_name = dst_col_ref.split(".")[-1]
                    for column in table.columns:
                        if column.name == src_col_name:
                            # Get the destination column
                            dst_column = schema.get_column(dst_tab_name, dst_col_name)
                            # Add source column
                            column.foreign_key_forward.append(dst_column)
                            # Add destination column
                            dst_column.foreign_key_backward.append(column)
            return schema
        
        # Create Schema object
        db_id = db_connector.db_id
        if Schema.has_cache(db_id):
            return Schema(db_id=db_id, db_connector=db_connector, tokenizer=tokenizer)
        schema = Schema(db_id=db_id, db_connector=db_connector, tokenizer=tokenizer)
        
        # Create Table objects
        table_names = db_connector.fetch_table_names()
        for table_name in table_names:
            table_tokenized_result = tokenizer(table_name, add_special_tokens=False)
            table_name_tokens = tokenizer.convert_ids_to_tokens(table_tokenized_result["input_ids"])
            table_name_tensor = torch.tensor(table_tokenized_result["input_ids"])
            table = Table(db_id=db_id, ori_name=table_name, name=table_name, name_tokens=table_name_tokens, name_tensor=table_name_tensor)
            
            # Get column information
            column_names = db_connector.fetch_column_names(table_name)
            column_types = list(map(Column.data_type_str_to_enum, db_connector.fetch_column_types(table_name)))
            primary_columns = db_connector.fetch_primary_keys(table_name)
            
            # Create Column objects
            for col_name, col_type in zip(column_names, column_types):                        
                col_tokenized_result = tokenizer(col_name, add_special_tokens=False)
                col_name_tokens = tokenizer.convert_ids_to_tokens(col_tokenized_result["input_ids"])
                col_name_tensor = torch.tensor(col_tokenized_result["input_ids"])
                column = Column(ori_name=col_name, name=col_name, name_tokens=col_name_tokens, name_tensor=col_name_tensor, data_type=col_type, table=table,
                                is_primary_key=col_name in primary_columns, 
                                foreign_key_forward=[], 
                                foreign_key_backward=[])
                # Save columns in the table object
                table.add_column(column)

            # Save tables in the schema object
            print(f'table name: {table.name} {id(schema)}')
            schema.add_table(table)

        # Add foreign key relations
        schema = add_foreign_key_relations(schema)
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
    
# To avoid circular import, we import the function here
import src.preprocess.relation_extractor as relation_extractor

if __name__ == "__main__":
    from src.db_connection.sqlite_connector import SqliteConnector
    from transformers import AutoTokenizer
    tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
    db_connector = SqliteConnector("datasets/spider/database/concert_singer/concert_singer.sqlite")
    schema = SchemaGenerator.db_to_schema(db_connector, tokenizer)
    stop = 1