import torch

class Encoder(torch.nn.Module):
    def __init__(self):
        super(Encoder, self).__init__()
        self.linear = torch.nn.Linear(10, 10)
        
    def forward(self, x):
        return x