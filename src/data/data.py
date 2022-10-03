import abc
import attrs
import torch
import warnings

from typing import List, Any
from torch.utils.data import Dataset
from src.parser.parser import BadPostgresSyntax


@attrs.define
class TextToSQLDatum:
    schema: str
    sql: str
    parse_tree: Any
    nl: str
    nl_tokens: List[str]
    nl_tensor: torch.Tensor


@attrs.define
class TextToSQLBatch:
    data: List[TextToSQLDatum]
    input_tensor: torch.Tensor
    
    def __getitem__(self, index):
        return self.data[index]
    
    def __len__(self):
        return len(self.data)


@attrs.define
class TextToSQLDataset(Dataset):
    def __init__(self, file_paths, tokenizer, sql_parser, schemaGenerator):
        super(TextToSQLDataset, self).__init__()
        self.file_paths = file_paths
        self.tokenizer = tokenizer
        self.sql_parser = sql_parser
        self.schemaGenerator = schemaGenerator
        self.data = []
        self.apply()

    def __getitem__(self, index):
        return self.data[index]

    def __len__(self) -> int:
        return len(self.data)
    
    def _check_and_warn_on_missing_schema_cache(self):
        assert len(self.schemaGenerator.schema_cache), "schemaGenerator.schema_cache is empty. Schema information must be cached first before loading the dataset."
    
    def apply(self):
        raw_data = self._read_in_data_from_files(self.file_paths)
        self._check_and_warn_on_missing_schema_cache()
        for idx, datum in enumerate(raw_data):
            # Pass item that has query with a bad Postgres syntax
            try:
                self.data.append(self._raw_datum_to_textToSQLDatum(datum))
            except Exception as e:
                if type(e) == BadPostgresSyntax:
                    warnings.warn(f"Error in converting raw datum to TextToSQLDatum. Bad postgresql syntax for query:{e.args[0]}")
                else:
                    raise e
        return self

    @abc.abstractclassmethod
    def _read_in_data_from_files(self, file_paths: List[str]) -> List[TextToSQLDatum]:
        pass

    @abc.abstractclassmethod
    def _raw_datum_to_textToSQLDatum(self, raw_data: TextToSQLDatum) -> TextToSQLDatum:
        pass


def collate_fn(item_list):
    def zero_pad_batching(tensor_list: List[torch.Tensor]) -> torch.Tensor:
        max_len = max([len(tensor) for tensor in tensor_list])
        token_tensors = torch.zeros(len(tensor_list), max_len, dtype=torch.long)
        for idx, tokens_tensor in enumerate(tensor_list):
            token_tensors[idx, :len(tokens_tensor)] = tokens_tensor
        return token_tensors
    
    input_tensor = zero_pad_batching([item.nl_tensor for item in item_list])
    return TextToSQLBatch(item_list, input_tensor)
