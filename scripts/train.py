import os
import torch
import hydra
from typing import List, Union
from omegaconf import DictConfig, OmegaConf
from transformers import AutoTokenizer

import src.utils.file as file_utils
import src.utils.module as module_utils
from src.data.data import TextToSQLDataset, collate_fn
from src.parser.parser import SQLParser
from src.data.schema import SchemaGenerator
from src.model.wrapper_model import Text2SQLModel

def prepare_data(cfg):
    def create_dataset_if_file_path_given(file_paths: List[str]) -> Union[TextToSQLDataset, List]:
        if not file_paths: return []
        return Dataset(
                file_paths=file_utils.file_names_to_path(cfg.dataset.dir_path, file_paths),
                tokenizer=tokenizer,
                sql_parser=sql_parser)

    # Load classes
    Dataset = module_utils.import_module(cfg.dataset.module, cfg.dataset.class_name)
    tokenizer = AutoTokenizer.from_pretrained(cfg.tokenizer_name)
    sql_parser = SQLParser(os.path.join(cfg.parser.grammar_dir, cfg.parser.grammar_file))

    # Prepare schema data
    if cfg.dataset.schema_preloading and cfg.dataset.schema_preloading.method == "from_meta_data":
        Schema_Generator: SchemaGenerator = module_utils.import_module(cfg.dataset.schema_preloading.module, cfg.dataset.schema_preloading.class_name)
        Schema_Generator.load_schema_from_meta_data_file(meta_data_file_path=os.path.join(cfg.dataset.dir_path, cfg.dataset.schema_file_name),
                                                    database_dir_path=cfg.dataset.database_dir_path,
                                                    tokenizer=tokenizer)
    # Prepare dataset
    train_dataset: Union[TextToSQLDataset, List] = create_dataset_if_file_path_given(cfg.dataset.train_file_names)
    val_dataset: Union[TextToSQLDataset, List] = create_dataset_if_file_path_given(cfg.dataset.val_file_names)
    test_dataset: Union[TextToSQLDataset, List] = create_dataset_if_file_path_given(cfg.dataset.test_file_names)
    
    # Prepare dataloader
    train_dataloader = torch.utils.data.DataLoader(dataset=train_dataset,
                                                   batch_size=cfg.dataloader.train.batch_size, 
                                                   num_workers=cfg.dataloader.train.num_workers, 
                                                   collate_fn=collate_fn)
    val_dataloader = torch.utils.data.DataLoader(dataset=val_dataset,
                                                batch_size=cfg.dataloader.val.batch_size, 
                                                num_workers=cfg.dataloader.val.num_workers, 
                                                collate_fn=collate_fn)
    test_dataloader = torch.utils.data.DataLoader(dataset=test_dataset,
                                            batch_size=cfg.dataloader.test.batch_size, 
                                            num_workers=cfg.dataloader.test.num_workers, 
                                            collate_fn=collate_fn)

    return train_dataloader, val_dataloader, test_dataloader

def prepare_model(cfg):
    Encoder_Model = module_utils.import_module(cfg.model.encoder.module, cfg.model.encoder.class_name)
    Decoder_Model = module_utils.import_module(cfg.model.decoder.module, cfg.model.decoder.class_name)
    encoder = Encoder_Model()
    decoder = Decoder_Model()
    model = Text2SQLModel(encoder=encoder, decoder=decoder)
    Adam = module_utils.import_module(cfg.optimizer.module, cfg.optimizer.class_name)
    optimizer = Adam(model.parameters(), lr=cfg.optim_args.lr)
    return model, optimizer

def train_epoch(cfg, model, optimizer, train_dataloader, val_dataloader, test_dataloader):
    # Update model
    step = 0
    epoch = 0
    while step < cfg.training.max_step:
        epoch += 1
        for data in train_dataloader:
            step += 1
            # Forward
            pred = model((data.input_tensor, data.relation_matrix))
            # Backward
            loss = compute_loss(pred, data.gold)
            loss.backward()
            # Update
            optimizer.step()
            optimizer.zero_grad()
    
    # Evaluate model
    acc = evaluate(model, val_dataloader)
    
    # Save model
    path_with_step = f"saves/step_{step}/"
    torch.save({**model.state_dict(), "step": step, "acc": acc}, path_with_step)

def compute_loss(cfg, pred, gold):
    Loss_Module = module_utils.import_module(cfg.loss.module, cfg.loss.class_name)
    loss_function = Loss_Module()
    loss_function(pred, data.gold)
    return torch.zeros(1, 1)

def evaluate(model, dataloader):
    return 1

@hydra.main(version_base=None, config_path="../config", config_name="base")
def main(cfg: DictConfig) -> None:
    print(OmegaConf.to_yaml(cfg))
    # Load data
    train_dataloader, val_dataloader, test_dataloader = prepare_data(cfg)
    # Load model
    model, optimizer = prepare_model(cfg)
    # Train
    train_epoch(cfg, model, optimizer, train_dataloader, val_dataloader, test_dataloader)


if __name__ == "__main__":
    main()
    pass