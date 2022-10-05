from src.data.data import TextToSQLDataset
from src.data.schema import SchemaGenerator


# KaggleDBQA Schema Generator
class KaggleDBQASchema(SchemaGenerator):
    raise NotImplementedError("KaggleDBQASchema is not implemented yet.")


# KaggleDBQA Dataset
class KaggleDBQADataset(TextToSQLDataset):
    def __init__(self, *args, **kwargs):
        raise NotImplementedError("KaggleDBQA dataset is not implemented yet!")
    
    def __getitem__(self, index):
        return self.data[index]

    def __len__(self):
        return len(self.data)
