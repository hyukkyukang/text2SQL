import torch

class Text2SQLModel(torch.nn.Module):
    def __init__(self, encoder, decoder):
        super(Text2SQLModel, self).__init__()
        self.encoder = encoder
        self.decoder = decoder
        
    def forward(self, x):
        return self.decoder(self.encoder(x))
