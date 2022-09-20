import abc
import tqdm
import torch

from transformers import AutoTokenizer
from torch.utils.data import DataLoader, Dataset

import src.utils.file as file_utils
import src.utils.list as list_utils

class TextToSQLDataset(Dataset):
    @abc.abstractmethod
    def __getitem__(self, index):
        return super().__getitem__(index)
    
    @abc.abstractmethod
    def __len__(self) -> int:
        return super().__len__()
    
class SpiderDataset(TextToSQLDataset):
    def __init__(self, dir_path, tokenizer):
        self.data = self.__process_data(dir_path, tokenizer)
    
    def __process_data(self, dir_path, tokenizer):
        # Get file names
        file_paths = file_utils.get_files_in_directory(dir_path, lambda file_name: file_name.startswith('train') and file_name.endswith('.json'))
        # Read files
        data_list = map(file_utils.read_json_file, file_paths)
        data = list_utils.flatten_list(data_list)
        # Create data items
        preprocessed_data = []
        for datum in tqdm.tqdm(data):
            # Tokenize items
            question_tokens = tokenizer(datum["question"], add_special_tokens=False)
            question_tokens_split = tokenizer.convert_ids_to_tokens(question_tokens["input_ids"])
            preprocessed_data.append({"db_id": datum["db_id"], "sql": datum["query"], "nl": datum["question"], "nl_split": question_tokens_split, "nl_token": question_tokens["input_ids"]})
        return preprocessed_data
    
    def __getitem__(self, index):
        return self.data[index]

    def __len__(self):
        return len(self.data)
    

class KaggleDBQADataset(TextToSQLDataset):
    def __init__(self, dir_path, tokenizer):
        raise NotImplementedError("KaggleDBQA dataset is not implemented yet!")
    def __getitem__(self, index):
        return self.data[index]

    def __len__(self):
        return len(self.data)


def collate_fn(item_list):
    def create_batched_tensors(tokens_list):
        max_len = max([len(tokens) for tokens in tokens_list])
        token_tensors = torch.zeros(len(tokens_list), max_len, dtype=torch.long)
        for idx, tokens in enumerate(tokens_list):
            token_tensors[idx, :len(tokens)] = torch.tensor(tokens)
        return token_tensors
    minibatch = {
        "db_ids": [item['db_id'] for item in item_list],
        "sqls": [item['sql'] for item in item_list],
        "nls": [item['nl'] for item in item_list],
        "nl_splits": [item['nl_split'] for item in item_list],
        "nl_tokens": [item['nl_token'] for item in item_list],
        "b_nl_tokens": create_batched_tensors([item['nl_token'] for item in item_list])
    }
    return minibatch

if __name__ == '__main__':
    mydataset = KaggleDBQADataset("./datasets/kaggle-dbqa", AutoTokenizer.from_pretrained("bert-base-uncased"))
    # datapipe = build_spider_datapipes(root_dir="./datasets/spider", mode="train")
    dataloader = DataLoader(dataset=mydataset, batch_size=2, num_workers=1, collate_fn=collate_fn)
    for data in dataloader:
        print(data)
