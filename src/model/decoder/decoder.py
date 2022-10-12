import torch
from omegaconf import DictConfig

class Decoder(torch.nn.Module):
    def __init__(self, cfg: DictConfig):
        super(Decoder, self).__init__()
        self.cfg = cfg.model.decoder
        self.linear = torch.nn.Linear(10, 10)
        
    def forward(self, x):
        return x