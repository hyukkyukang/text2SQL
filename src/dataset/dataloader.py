import tqdm
import json
import torch
import torchdata.datapipes as dp

from transformers import AutoTokenizer
from torch.utils.data import DataLoader
from torchdata.datapipes.iter import IterDataPipe
from torchdata.datapipes.map import MapDataPipe
from torchdata.datapipes import functional_datapipe

from memory_profiler import profile 

@functional_datapipe("parse_json_items")
class SpiderJsonParserIterDataPipe(IterDataPipe):
    def __init__(self, dp, **fmtparams) -> None:
        self.dp = dp
        self.fmtparams = fmtparams

    @profile
    def __iter__(self):
        data = []
        for path, file in self.dp:
            new_data = json.load(file)
            data += new_data
        for datum in data:
            yield datum

@functional_datapipe("to_our_data")
class SpiderDataParserIterDataPipe(IterDataPipe):
    def __init__(self, dp, **fmtparams) -> None:
        self.dp = dp
        self.fmtparams = fmtparams

    @profile
    def __iter__(self):
        tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
        data = []
        for datum in tqdm.tqdm(self.dp):
            tokenized_result = tokenizer(datum["question"], add_special_tokens=False)
            question_tokens = tokenized_result["input_ids"]
            question_split = tokenizer.decode(question_tokens).split()
            # TODO: tokens into token ids
            data.append({"db_id": datum["db_id"], "sql": datum["query"], "nl": datum["question"], "nl_split": question_split, "nl_token": question_tokens})
        for datum in data:
            yield datum

@functional_datapipe("to_our_data2")
class SpiderDataParserMapperDataPipe(MapDataPipe):
    def __init__(self, dp, **fmtparams) -> None:
        self.dp = dp
        self.fmtparams = fmtparams
        self.__preprocess()

    def __preprocess(self):
        tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
        self.data = []
        for datum in tqdm.tqdm(self.dp):
            tokenized_result = tokenizer(datum["question"], add_special_tokens=False)
            question_tokens = tokenized_result["input_ids"]
            question_split = tokenizer.decode(question_tokens).split()
            # TODO: tokens into token ids
            self.data.append({"db_id": datum["db_id"], "sql": datum["query"], "nl": datum["question"], "nl_split": question_split, "nl_token": question_tokens})
        for datum in self.data:
            yield datum
            

    @profile
    def __getitem__(self, idx):
        stop = 1
        
    def __len__(self):
        return len(self.data)


def filter_for_train_data(file_path):
    filename = file_path.split("/")[-1]
    return filename.startswith("train") and filename.endswith(".json")

def filter_for_test_data(file_path):
    filename = file_path.split("/")[-1]
    return filename.startswith("dev") and filename.endswith(".json")

def build_spider_datapipes(root_dir="./datasets", mode="train"):
    datapipe = dp.iter.FileLister(root_dir)
    filter_fn = filter_for_train_data if mode == "train" else filter_for_test_data
    datapipe = datapipe.filter(filter_fn=filter_fn)
    datapipe = datapipe.open_files(mode='rt')
    datapipe = datapipe.parse_json_items()
    datapipe = datapipe.to_our_data()
    return datapipe

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
    datapipe = build_spider_datapipes(root_dir="./datasets/spider", mode="train")
    dl = DataLoader(dataset=datapipe, batch_size=2, num_workers=1, collate_fn=collate_fn)
    first = next(iter(dl))
    labels, features = first['nls'], first['b_nl_tokens']
    print(f"Labels batch shape: {len(labels)}")
    print(f"Feature batch shape: {features.size()}")
    print(f"{labels = }\n{features = }")
    n_sample = 0
    for row in iter(dl):
        n_sample += 1
    print(f"{n_sample = }")
