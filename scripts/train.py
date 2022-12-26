import os
import attrs
import torch
import hydra
from typing import List, Any, Union
from omegaconf import DictConfig, OmegaConf
from transformers import AutoTokenizer, PreTrainedTokenizer

import src.utils.file as file_utils
import src.utils.module as module_utils
from src.data.data import TextToSQLDataset, collate_fn
from src.parser.parser import SQLParser
from src.data.schema import SchemaGenerator
from src.model.enc_dec import Text2SQLModel

@attrs.define
class Trainer:
    cfg: DictConfig
    tokenizer: PreTrainedTokenizer = attrs.field(default=None)
    def __attrs_post_init__(self):
        self.tokenizer = AutoTokenizer.from_pretrained(self.cfg.model.encoder.lm_model_version)
    def prepare_data(self):
        def create_dataset_if_file_path_given(file_paths: List[str]) -> Union[TextToSQLDataset, List]:
            if not file_paths: return []
            return Dataset(
                    file_paths=file_utils.file_names_to_path(self.cfg.dataset.dir_path, file_paths),
                    tokenizer=self.tokenizer,
                    sql_parser=sql_parser)

        # Load classes
        Dataset = module_utils.import_module(self.cfg.dataset.module, self.cfg.dataset.class_name)
        self.tokenizer = AutoTokenizer.from_pretrained(self.cfg.model.encoder.lm_model_version)
        sql_parser = SQLParser(os.path.join(self.cfg.parser.grammar_dir, self.cfg.parser.grammar_file))

        # Prepare schema data
        if self.cfg.dataset.schema_preloading and self.cfg.dataset.schema_preloading.method == "from_meta_data":
            Schema_Generator: SchemaGenerator = module_utils.import_module(self.cfg.dataset.schema_preloading.module, self.cfg.dataset.schema_preloading.class_name)
            Schema_Generator.load_schema_from_meta_data_file(meta_data_file_path=os.path.join(self.cfg.dataset.dir_path, self.cfg.dataset.schema_file_name),
                                                        database_dir_path=self.cfg.dataset.database_dir_path,
                                                        tokenizer=self.tokenizer)
        # Prepare dataset
        train_dataset: Union[TextToSQLDataset, List] = create_dataset_if_file_path_given(self.cfg.dataset.train_file_names)
        val_dataset: Union[TextToSQLDataset, List] = create_dataset_if_file_path_given(self.cfg.dataset.val_file_names)
        test_dataset: Union[TextToSQLDataset, List] = create_dataset_if_file_path_given(self.cfg.dataset.test_file_names)
        
        # Prepare dataloader
        train_dataloader = torch.utils.data.DataLoader(dataset=train_dataset,
                                                    batch_size=self.cfg.dataloader.train.batch_size, 
                                                    num_workers=self.cfg.dataloader.train.num_workers, 
                                                    collate_fn=collate_fn)
        val_dataloader = torch.utils.data.DataLoader(dataset=val_dataset,
                                                    batch_size=self.cfg.dataloader.val.batch_size, 
                                                    num_workers=self.cfg.dataloader.val.num_workers, 
                                                    collate_fn=collate_fn)
        test_dataloader = torch.utils.data.DataLoader(dataset=test_dataset,
                                                batch_size=self.cfg.dataloader.test.batch_size, 
                                                num_workers=self.cfg.dataloader.test.num_workers, 
                                                collate_fn=collate_fn)

        return train_dataloader, val_dataloader, test_dataloader

    def prepare_model(self):
        Encoder_Model = module_utils.import_module(self.cfg.model.encoder.module, self.cfg.model.encoder.class_name)
        Decoder_Model = module_utils.import_module(self.cfg.model.decoder.module, self.cfg.model.decoder.class_name)
        encoder = Encoder_Model(self.cfg, self.tokenizer)
        decoder = Decoder_Model(self.cfg)
        model = Text2SQLModel(self.cfg, encoder=encoder, decoder=decoder)
        Adam = module_utils.import_module(self.cfg.optimizer.module, self.cfg.optimizer.class_name)
        optimizer = Adam(model.parameters(), lr=self.cfg.optim_args.lr)
        return model, optimizer

    def train_epoch(self, model, optimizer, train_dataloader, val_dataloader, test_dataloader):
        # Update model
        step = 0
        epoch = 0
        while step < self.cfg.training.max_step:
            epoch += 1
            for data in train_dataloader:
                step += 1
                # Forward
                pred = model(data.input_token, data.att_mask, data.tok_type_ids,
                             data.non_sep_tok_input_indices, data.att_mask_token_wo_sep_token, data.relation_matrix)
                # Backward
                loss = self.compute_loss(pred, data.gold)
                loss.backward()
                # Update
                optimizer.step()
                optimizer.zero_grad()
        
        # Evaluate model
        acc = self.evaluate(model, val_dataloader)
        
        # Save model
        path_with_step = f"saves/step_{step}/"
        torch.save({**model.state_dict(), "step": step, "acc": acc}, path_with_step)

    def compute_loss(self, pred, gold):
        Loss_Module = module_utils.import_module(self.cfg.loss.module, self.cfg.loss.class_name)
        loss_function = Loss_Module()
        loss_function(pred, gold)
        return torch.zeros(1, 1)

    def evaluate(self, dataloader):
        return 1

@hydra.main(version_base=None, config_path="../config", config_name="base")
def main(cfg: DictConfig) -> None:
    trainer = Trainer(cfg)
    print(OmegaConf.to_yaml(cfg))
    # Load data
    train_dataloader, val_dataloader, test_dataloader = trainer.prepare_data()
    # Load model
    model, optimizer = trainer.prepare_model()
    # Train
    trainer.train_epoch(model, optimizer, train_dataloader, val_dataloader, test_dataloader)


if __name__ == "__main__":
    main()
    pass