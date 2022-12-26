import torch
import numpy as np
from typing import List, Union, Any

import src.utils.string as string_utils
import src.preprocess.relations as Relations
from src.data.schema import Schema, Column, Table, DataTypes

# Helper functions
def is_schema(object: Any):
    return type(object).__name__ == Schema.__name__
def is_table(entity: Union[str, Column, Table]):
    return type(entity).__name__ == Table.__name__
def is_column(entity: Union[str, Column, Table]):
    return type(entity).__name__ == Column.__name__
def is_word_to_pass(token: str) -> bool:
    return token in string_utils.STOPWORDS or token in string_utils.PUNKS

def is_value_match(token: str, schema_item: Union[Column, Table]) -> bool:
    # Match with columns only
    if is_table(schema_item):
        return False

    # Check if connected to DB
    db_connector = schema_item.table.schema.db_connector
    if not db_connector:
        print(f"Passing value matching. No database connector is provided for: {schema_item.ref_name}. ")
        return False

    # Heuristic matching
    if token in string_utils.BOOLEAN_STRINGS and schema_item.data_type == DataTypes.BOOL:
        return True
    elif string_utils.is_number(token) and schema_item.data_type == DataTypes.NUMBER:
        return True
    
    # Matching with DB values
    if "'" in token:
        return False
    query_str = f"SELECT \"{schema_item.ori_name}\" FROM {schema_item.table.ori_name} WHERE \"{schema_item.ori_name}\" like '{token}' or " \
                                                                                f"\"{schema_item.ori_name}\" like '{token} %' or " \
                                                                                f"\"{schema_item.ori_name}\" like '% {token}' or " \
                                                                                    f"\"{schema_item.ori_name}\" like ' {token} ';"
    db_connector.execute(query_str)
    result = db_connector.fetchall()
    return len(result) > 0

# Functions to get relation b/w inputs
def get_relation_bw_token_schema(token: str, schema: Union[Column, Table]):
    def is_equal(token1: str, token2: str) -> bool:
        return token1 == token2
    def is_exact_match(matching_results: List[bool]) -> bool:
        return all(matching_results)
    def is_partial_match(matching_results: List[bool]) -> bool:
        return any(matching_results)
    # Perform matching
    schema_tokens = schema.name_tokens
    matching_results = [is_equal(token, schema_token) for schema_token in schema_tokens]
    if is_table(schema):
        if is_exact_match(matching_results):
            return Relations.SchemaLinkingRelations.QT_EXATCH_MATCH
        elif is_partial_match(matching_results):
            return Relations.SchemaLinkingRelations.QT_PARTIAL_MATCH
        elif is_value_match(token, schema):
            return Relations.SchemaLinkingRelations.QT_VALUE_MATCH
        else:
            return Relations.SchemaLinkingRelations.QT_DEFAULT
    elif is_column(schema):
        if is_exact_match(matching_results):
            return Relations.SchemaLinkingRelations.QC_EXATCH_MATCH
        elif is_partial_match(matching_results):
            return Relations.SchemaLinkingRelations.QC_PARTIAL_MATCH
        elif is_value_match(token, schema):
            return Relations.SchemaLinkingRelations.QC_VALUE_MATCH
        else:
            return Relations.SchemaLinkingRelations.QC_DEFAULT
    else:
        raise ValueError(f"Unknown schema type: {type(schema)}")


def get_relation_bw_schema_entities(entity1: Union[Column, Table], entity2: Union[Column, Table], case_sensitive=False):
    def relation_bw_col_col(column1: Column, column2: Column):
        if column1 == column2:
            return Relations.SchemaRelations.CC_IDENTICAL
        elif column1.table == column2.table:
            return Relations.SchemaRelations.CC_SAME_TABLE
        elif column1 in column2.foreign_key_backward:
            return Relations.SchemaRelations.CC_FOREIGN_KEY_FORWARD
        elif column1 in column2.foreign_key_forward:
            return Relations.SchemaRelations.CC_FOREIGN_KEY_BACKWARD
        else:
            return Relations.SchemaRelations.CC_DEFAULT

    def relation_bw_col_tab(column: Column, table: Table):
        if column.table == table:
            if column.is_primary_key:
                return Relations.SchemaRelations.CT_PRIMARY_KEY
            elif column.foreign_key_forward:
                return Relations.SchemaRelations.CT_FOREIGN_KEY
            else:
                return Relations.SchemaRelations.CT_CONTAINS_AND_NON_KEY
        else:
            return Relations.SchemaRelations.CT_DEFAULT

    def relation_bw_tab_tab(table1: Table, table2: Table):
        table1_foreign_key_dsts = table1.get_foreign_key_backwards()
        table2_foreign_key_dsts = table2.get_foreign_key_backwards()
        if table1 == table2:
            return Relations.SchemaRelations.TT_IDENTICAL
        elif any([column in table1.columns for column in table2_foreign_key_dsts]):
            return Relations.SchemaRelations.TT_FOREIGN_KEY_BACKWARD
        elif any([column in table2.columns for column in table1_foreign_key_dsts]):
            return Relations.SchemaRelations.TT_FOREIGN_KEY_FORWARD
        else:
            return Relations.SchemaRelations.TT_DEFAULT

    if is_column(entity1):
        if is_column(entity2):
            return relation_bw_col_col(entity1, entity2)
        elif is_table(entity2):
            return relation_bw_col_tab(entity1, entity2)
        else:
            raise RuntimeError(f"Unsupported entity type: {type(entity2)}")
    elif is_table(entity1):
        if is_column(entity2):
            return Relations.inverse(relation_bw_col_tab(entity2, entity1))
        elif is_table(entity2):
            return relation_bw_tab_tab(entity2, entity1)
        else:
            raise RuntimeError(f"Unsupported entity type: {type(entity2)}")
    raise RuntimeError(f"Unsupported entity type: {type(entity1)}")


# Functions to get relation matrix
def get_relation_matrix_for_schemas(schema_entries):
    relation_matrix = np.zeros((len(schema_entries), len(schema_entries)), dtype=np.long)
    for idx1, entry1 in enumerate(schema_entries):
        for idx2, entry2 in enumerate(schema_entries):
            relation_matrix[idx1, idx2] = get_relation_bw_schema_entities(entry1, entry2)
    return relation_matrix

def get_relation_matrix_for_tokens_schema(tokens: List[str], schema_entries: List[Union[Column, Table]]):
    relation_matrix = np.zeros((len(tokens), len(schema_entries)), dtype=np.long)
    for idx1, token in enumerate(tokens):
        for idx2, entry in enumerate(schema_entries):
           relation_matrix[idx1][idx2] = get_relation_bw_token_schema(token, entry)
    return relation_matrix


def get_relation_matrix_for_tokens(tokens: List[str]):
    relation_matrix = np.zeros((len(tokens), len(tokens)), dtype=np.long)
    for idx1 in range(len(tokens)):
        for idx2 in range(len(tokens)):
            if idx1 <= idx2-2:
                relation_matrix[idx1, idx2] = Relations.QuestionRelations.TWO_HOP_TO_THE_LEFT
            elif idx1 == idx2-1:
                relation_matrix[idx1, idx2] = Relations.QuestionRelations.ONE_HOP_TO_THE_LEFT
            elif idx1 == idx2:
                relation_matrix[idx1, idx2] = Relations.QuestionRelations.IDENTICAL
            elif idx1 == idx2+1:
                relation_matrix[idx1, idx2] = Relations.QuestionRelations.ONE_HOP_TO_THE_RIGHT
            elif idx1 >= idx2+2:
                relation_matrix[idx1, idx2] = Relations.QuestionRelations.TWO_HOP_TO_THE_RIGHT
            else:
                raise RuntimeError(f"Should not reach here. idx1: {idx1}, idx2: {idx2}")
    return relation_matrix

def inverse_matrix(matrix):
    assert len(matrix.shape) == 2, f"Only support 2D matrix, but found: {matrix.size()}"
    if type(matrix) == np.ndarray:
        new_matrix = np.zeros((matrix.shape[1], matrix.shape[0]), dtype=np.long)
    elif type(matrix) == torch.Tensor:
        new_matrix = torch.zeros((matrix.shape[1], matrix.shape[0]), dtype=torch.long)
    else:
        raise RuntimeError(f"Unsupported matrix type: {type(matrix)}")
    for idx1 in range(matrix.shape[0]):
        for idx2 in range(matrix.shape[1]):
            new_matrix[idx2, idx1] = Relations.inverse(matrix[idx1, idx2])
    return new_matrix


if __name__ == "__main__":
    pass
