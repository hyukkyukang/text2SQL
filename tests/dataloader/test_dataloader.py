import os
import torch
import unittest
from transformers import AutoTokenizer

import src.utils.file as file_utils
from src.data.data import collate_fn
from src.parser.parser import SQLParser
from src.data.spider_data import SpiderDataset, SpiderSchemaGenerator

def data_filter_func(datum: dict) -> bool:
    return datum['db_id'] not in ["baseball_1", "wta_1", "soccer_1"]

class Test_dataloader(unittest.TestCase):
    def __init__(self, *args, **kwargs):
        super(Test_dataloader, self).__init__(*args, **kwargs)
        # Set dataset directory
        self.dataset_dir_map = {"spider": "./datasets/spider",
                                "kaggleDBQA": "./datasets/kaggle-dbqa"}
        # Set tokenizer
        os.environ["TOKENIZERS_PARALLELISM"] = "false"
        self.tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
        self.sql_parser = SQLParser("./src/grammar/ratsql_extended.asdl")

    def _test_dataset(self, dataset_class, dataset_dir, tokenizer):
        self.assertTrue(os.path.exists(dataset_dir), "Dataset directory does not exist!")
        file_paths = file_utils.get_files_in_directory(dataset_dir, lambda file_name: file_name.startswith('train') and file_name.endswith('.json'))
        dataset = dataset_class(file_paths, tokenizer, self.sql_parser, data_filter_func=data_filter_func)
        self.assertGreater(len(dataset), 0, "Dataset is empty!")
        self.assertIsNotNone(dataset[0].input_token)
        self.assertIsNotNone(dataset[0].relation_matrix)
        return dataset

    def _test_dataloader(self, dataset):
        dataloader = torch.utils.data.DataLoader(dataset=dataset, batch_size=2, num_workers=0, collate_fn=collate_fn)
        mini_batch = iter(dataloader).next()
        self.assertIsNotNone(mini_batch, "Dataloader is empty!")
        self.assertGreater(len(mini_batch), 0, "Dataloader is empty!")

    def _print_success(self, num_of_queries):
        print(f"Passed loading {num_of_queries} data")

    def test_spider_dataloader(self):
        dataset_dir = self.dataset_dir_map['spider']
        SpiderSchemaGenerator.load_schema_from_meta_data_file(os.path.join(dataset_dir, "tables.json"), 
                                                              os.path.join(dataset_dir, "database/"), 
                                                              self.tokenizer, data_filter_func=data_filter_func)
        dataset = self._test_dataset(SpiderDataset, dataset_dir, self.tokenizer)
        self._test_dataloader(dataset)
        self._print_success(len(dataset))

    def test_kaggleDBQA_dataloader(self):
        # dataset = self._test_dataset(KaggleDBQADataset, self.dataset_dir_map['kaggleDBQA'], self.tokenizer)
        # self._test_dataloader(dataset)
        pass


if __name__ == "__main__":
    unittest.main()
