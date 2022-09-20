import os
import torch
import unittest

from transformers import AutoTokenizer
from src.dataset.dataloader import SpiderDataset, KaggleDBQADataset, collate_fn

class Test_dataloader(unittest.TestCase):    
    def __init__(self, *args, **kwargs):
        super(Test_dataloader, self).__init__(*args, **kwargs)
        # Set dataset directory
        self.dataset_dir_map = {"spider": "./datasets/spider",
                                "kaggleDBQA": "./datasets/kaggle-dbqa"}
        # Set tokenizer
        os.environ["TOKENIZERS_PARALLELISM"] = "false"
        self.tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")

    def _test_dataset(self, dataset_class, dataset_dir, tokenizer):
        dataset = dataset_class(dataset_dir, tokenizer)
        self.assertTrue(len(dataset) > 0, "Dataset is empty!")
        return dataset
    
    def _test_dataloader(self, dataset):
        dataloader = torch.utils.data.DataLoader(dataset=dataset, batch_size=2, num_workers=1, collate_fn=collate_fn)
        item = iter(dataloader).next()
        self.assertTrue(item is not None, "Dataloader returns None!")
        
    def test_spider_dataloader(self):
        dataset = self._test_dataset(SpiderDataset, self.dataset_dir_map['spider'], self.tokenizer)
        self._test_dataloader(dataset)

    def test_kaggleDBQA_dataloader(self):
        dataset = self._test_dataset(KaggleDBQADataset, self.dataset_dir_map['kaggleDBQA'], self.tokenizer)
        self._test_dataloader(dataset)

if __name__ == "__main__":
    unittest.main()
