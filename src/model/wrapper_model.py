from torch.nn import Module
from omegaconf import DictConfig

class Text2SQLModel(Module):
    def __init__(self, cfg: DictConfig, encoder: Module, decoder: Module):
        super(Text2SQLModel, self).__init__()
        self.cfg = cfg.model
        self.encoder = encoder
        self.decoder = decoder

    def forward(self, *args, **kwargs):
        return self.decoder(self.encoder(*args, **kwargs))
