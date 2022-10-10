import torch

class Decoder(torch.nn.Module):
    def __init__(self):
        super(Decoder, self).__init__()
        self.linear = torch.nn.Linear(10, 10)
        
    def forward(self, x):
        return x