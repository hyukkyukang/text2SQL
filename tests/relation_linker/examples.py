from typing import Tuple, List

from transformers import AutoTokenizer
from src.data.schema import SchemaGenerator, Schema
from src.db_connection.sqlite_connector import SqliteConnector



def test_example1() -> Tuple[List[str], Schema]:
    # Create NL tokens
    tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
    nl = "What are the location played in the stadium name Stark's Park?"
    tokenized_result = tokenizer(nl, add_special_tokens=False)
    nl_tokens = tokenizer.convert_ids_to_tokens(tokenized_result["input_ids"])
    # Create schema
    db_connector = SqliteConnector("datasets/spider/database/concert_singer/concert_singer.sqlite")
    Schema.schema_cache.clear()
    schema = SchemaGenerator.db_to_schema(db_connector, tokenizer)
    return nl_tokens, schema