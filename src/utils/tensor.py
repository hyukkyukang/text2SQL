import torch
from typing import List

def zero_pad_batching_one_dim(tensor_list: List[torch.Tensor]) -> torch.Tensor:
    max_len = max([len(tensor) for tensor in tensor_list])
    token_tensors = torch.zeros(len(tensor_list), max_len, dtype=tensor_list[0].dtype)
    for idx, tokens_tensor in enumerate(tensor_list):
        token_tensors[idx, :len(tokens_tensor)] = tokens_tensor
    return token_tensors

def zero_pad_batching_two_dim(tensor_list: List[torch.Tensor]) -> torch.Tensor:
    dim_one_max_len = max([len(tensor) for tensor in tensor_list])
    dim_two_max_len = max([len(tensor[0]) for tensor in tensor_list])
    token_tensors = torch.zeros(len(tensor_list), dim_one_max_len, dim_two_max_len, dtype=tensor_list[0].dtype)
    for idx, tokens_tensor in enumerate(tensor_list):
        token_tensors[idx, :len(tokens_tensor), :len(tokens_tensor[0])] = tokens_tensor
    return token_tensors

def zero_pad_batching(tensor_list: List[torch.Tensor]) -> torch.Tensor:
    tensor_item = tensor_list[0]
    if len(tensor_item.shape) == 1:
        return zero_pad_batching_one_dim(tensor_list)
    elif len(tensor_item.shape) == 2:
        return zero_pad_batching_two_dim(tensor_list)
    else:
        raise NotImplementedError(f"Only support 1D and 2D tensor, but found: {tensor_item.shape}")