# 
import json
import math
import os

import attrs
# import wandb
import hydra
import torch
import transformers
from hkkang_utils import file as file_utils
from hkkang_utils import misc as misc_utils
from hkkang_utils import ml as ml_utils
from hkkang_utils import tensor as tensor_utils
from omegaconf import OmegaConf

# Internal modules
from src.data.data import collate_fn
from src.data.spider_data import SpiderDataset, SpiderSchemaGenerator
from src.eval import evaluate_spider
from src.model.decoder.lstm_decoder import LSTMDecoder
from src.model.enc_dec import Text2SQLModel
from src.model.encoder.relation_aware_encoder import RAEncoder
from src.parser.parser import SQLParser

torch.backends.cuda.matmul.allow_tf32 = True
os.environ["TOKENIZERS_PARALLELISM"] = "false"

@attrs.define
class Trainer():
    # Static variable
    step = 0
    # member variable
    cfg = attrs.field()
    _device = attrs.field(default=None)
    _model = attrs.field(default=None)
    _batch_size = attrs.field(default=None)
    _train_dataloader = attrs.field(default=None)
    _val_dataloader = attrs.field(default=None)
    _test_dataloader = attrs.field(default=None)
    _optimizer = attrs.field(default=None)
    score = attrs.field(default=None)
    tokenizer = attrs.field(init=False, default=None)
    sql_parser = attrs.field(init=False, default=None)

    def __attrs_post_init__(self):
        # Initialize tokenizer
        print("Attrs post init Begin")
        print("Initialize tokenizer")
        self.tokenizer = transformers.AutoTokenizer.from_pretrained(self.cfg.model.encoder.lm_model_version)
        # Initialize sql parser
        print("Initialize SQL Parser")
        self.sql_parser = SQLParser(os.path.join(self.cfg.parser.grammar_dir, self.cfg.parser.grammar_file))
        # Initialize dataset
        print("Loading schema from meta data file")
        SpiderSchemaGenerator.load_schema_from_meta_data_file(os.path.join(self.cfg.dataset.dir_path, self.cfg.dataset.schema_file_name), 
                                                              self.cfg.dataset.database_dir_path, 
                                                              self.tokenizer)
        
        print("Attrs post init Done")

    @misc_utils.property_with_cache
    def model(self):
        # Initialize model
        encoder = RAEncoder(self.cfg)
        decoder = LSTMDecoder(self.cfg)
        model = Text2SQLModel(self.cfg, encoder, decoder)
        # TODO: Add special tokens
        return model
    
    @misc_utils.property_with_cache
    def train_dataloader(self):
        file_paths = file_utils.get_files_in_directory(self.cfg.dataset.dir_path, lambda file_name: file_name.startswith('train') and file_name.endswith('.json'))
        dataset = SpiderDataset(file_paths, self.tokenizer, self.sql_parser)
        return torch.utils.data.DataLoader(dataset, 
                                           shuffle=True, 
                                           batch_size=self.cfg.dataloader.train.batch_size, 
                                           num_workers=self.cfg.dataloader.train.num_workers,
                                           collate_fn=collate_fn)
    
    @misc_utils.property_with_cache
    def val_dataloader(self):
        file_paths = file_utils.get_files_in_directory(self.cfg.dataset.dir_path, lambda file_name: file_name.startswith('val') and file_name.endswith('.json'))
        dataset = SpiderDataset(file_paths, self.tokenizer, self.sql_parser)
        return torch.utils.data.DataLoader(dataset, 
                                           shuffle=True, 
                                           batch_size=self.cfg.dataloader.val.batch_size, 
                                           num_workers=self.cfg.dataloader.val.num_workers,
                                           collate_fn=collate_fn)

    @misc_utils.property_with_cache
    def optimizer(self):
        return torch.optim.Adam(self.model.parameters(), lr=self.cfg.optimizer.lr)

    @property
    def device(self):
        return torch.device('cuda' if self.cfg.use_cuda and torch.cuda.is_available() else 'cpu')

    @property
    def batch_size(self, mode="train"):
        if mode == "train":
            return self.cfg.dataloader.train.batch_size
        elif mode == "val":
            return self.cfg.dataloader.val.batch_size
        elif mode == "test":
            return self.cfg.dataloader.test.batch_size
        raise ValueError(f"mode should be one of train, val, test, but found: {mode}")

    @property
    def epoch(self):
        return (self.step * self.batch_size) // len(self.train_dataloader.dataset)

    @property
    def eval_dir_path(self):
        # TODO: Need to change this after fixing logger
        raise NotImplementedError("Need to change this after fixing logger")
        return os.path.join(logger.exp_dir_path, "evaluation/")
    
    @property
    def eval_pred_file_path(self):
        return os.path.join(self.eval_dir_path, f"pred_step_{self.step}.txt")

    @property
    def eval_gold_file_path(self):
        return os.path.join(self.eval_dir_path, "val_gold.jsonl")

    def save(self):
        save_dic = {
            "model": self.model.state_dict(),
            "optimizer": self.optimizer.state_dict()
            }
        # TODO: Need to fix this after fixing logger
        raise NotImplementedError("Need to fix this after fixing logger")
        torch.save(save_dic, os.path.join(logger.exp_dir_path, f"model_step_{self.step}.pt"))

    def train(self):
        # display git, config, environment setting
        print(f"config:\n{OmegaConf.to_yaml(self.cfg)}")
        tensor_utils.show_environment_setting(print)

        # # Set wandb
        # wandb.init(project="text-to-sql", entity="hyukkyukang")
        # wandb.config=self.cfg

        # Begin Train loop
        self.optimizer.zero_grad()
        for data in misc_utils.infinite_iterator(self.train_dataloader):
            with ml_utils.Training_context(Trainer,
                                            self.cfg.optimizer.effective_batch_size,
                                            self.cfg.dataloader.train.batch_size,
                                            self.cfg.optimizer.eval_freq_estep,
                                            self.cfg.optimizer.max_estep) as tc:
                # Forward and backward
                loss = self.model(data)
                loss.backward()
                # If step to update
                if tc.is_state_to_update:
                    self.optimizer.step()
                    self.optimizer.zero_grad()

                # Logging
                print(f"Step: {self.step}, Loss: {loss}")
                # wandb.log({"loss": loss, 
                #         "step": self.step, 
                #         "epoch": self.epoch})

                # Eval condition
                if tc.is_state_to_eval:
                    self.evaluate()
                    
                # Exit condition
                if tc.is_state_to_exit: 
                    break

        # Run evaluation
        print("Training done!")

    @torch.no_grad()
    def evaluate(self):
        # Set dir and file paths
        file_utils.create_directory(self.eval_dir_path)

        # write raw validation data if not exists
        if not os.path.exists(self.eval_gold_file_path):
            with open(self.eval_gold_file_path, "w") as f:
                for batch_data in self.val_dataloader:
                    for datum in batch_data:
                        f.write(json.dumps(datum.raw_datum)+"\n")

        # Create prediction file
        inferences = []
        for data in self.val_dataloader:
            inferences += self.model.generate(data.input_tensor.to(self.device), data.input_att_mask_tensor.to(self.device))

        # Write into file
        with open(self.eval_pred_file_path, "w") as f:   
            for inference in inferences:
                f.write(inference + "\n")

        # Run official toto evaluation script
        result = evaluate_spider(prediction_path=self.eval_pred_file_path, target_path=self.eval_gold_file_path)
        bleu_score = result[0][0]
        parent_precision = result[1][0]["precision"]
        parent_recall = result[1][0]["recall"]
        parent_fscore = result[1][0]["fscore"]
        print(f"BLEU score: {bleu_score} at step {self.step}")
        print(f"Parent Fscore: {parent_fscore} at step {self.step}")
        # Update best score
        if self.bleu_score < bleu_score:
            print(f"New best bleu score: {bleu_score} at step {self.step} (previous: {self.bleu_score})")
            self.bleu_score = bleu_score
            self.bleu_best_step = self.step
        if self.parent_fscore < parent_fscore:
            print(f"New best parent fscore: {parent_fscore} at step {self.step} (previous: {self.parent_fscore})")
            self.parent_precision = parent_precision
            self.parent_recall = parent_recall
            self.parent_fscore = parent_fscore
            self.parent_best_step = self.step
            self.save()


@hydra.main(config_path="../config", config_name="base")
def main(cfg):
    trainer = Trainer(cfg)
    trainer.train()


if __name__ == "__main__":
    main()
