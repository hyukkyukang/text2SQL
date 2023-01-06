import math
from typing import Optional, Tuple

import torch
from torch import Tensor
from torch.nn import Module


def compute_attention_logits(query: Tensor, key: Tensor, relation:Optional[Tensor]=None) -> Tensor:
    """Compute attention logits
    
    :param query: attention query with shape: [batch, heads, len_queries, depth]
    :type query: Tensor
    :param key: attention key with shape: [batch, heads, len_keys, depth]
    :type key: Tensor
    :param relation: relation vector for key with shape: [batch, len_query, len_keys, depth], defaults to None
    :type relation: Optional[Tensor], optional
    :return: attention logit with shape: [batch, heads, len_queries, len_keys]
    :rtype: Tensor
    """
    # qk Shape: [batch, heads, len_queries, len_keys]
    qk = torch.matmul(query, key.transpose(-2, -1))
    
    if relation:
        # reshape to [batch, len_queries, heads, depth]
        q_t = query.permute(0, 2, 1, 3)
        
        # reshape to [batch, len_queries, depth, len_keys]
        r_t = relation.transpose(-2, -1)
        
        #   [batch, len_queries, heads, depth]
        # x [batch, len_queries, depth, len_keys]
        # = [batch, len_queries, heads, len_keys]
        qr = torch.matmul(q_t, r_t)
        
        # reshape to [batch, heads, len_queries, len_keys]
        bias = qr.permute(0, 2, 1, 3)
        
        # Add bias
        qk = qk + bias
    
    # Scale by depth
    logits = qk / math.sqrt(query.shape[-1])

    # Tensor shape [batch, heads, len_queries, len_keys]
    return logits


def compute_new_representation(weights: Tensor, value: Tensor, relation:Optional[Tensor]=None) -> Tensor:
    """Compute new representation

    :param weights: attention weights with shape: [batch, heads, len_queries, len_keys]
    :type weights: Tensor
    :param value: attention value with shape: [batch, heads, len_keys, depth]
    :type value: Tensor
    :param relation: relation vector for value with shape: [batch, len_queries, len_keys, depth], defaults to None
    :type relation: Optional[Tensor], optional
    :return: new representation with shape: [batch, heads, len_queries, depth]
    :rtype: Tensor
    """
    
    #   [batch, heads, len_queries, len_keys]
    # x [batch, heads, len_keys, depth]
    # = [batch, heads, len_queries, depth]
    new_rep = torch.matmul(weights, value)
    
    if relation:
        # reshape to [batch, len_queries, heads, len_keys]
        w_t = weights.permute(0, 2, 1, 3)
        
        #   [batch, len_queries, heads, len_keys]
        # x [batch, len_queries, len_keys, depth]
        # = [batch, len_queries, heads, depth]
        wr = torch.matmul(w_t, relation)
        
        # Reshape to [batch heads len_queries depth]
        bias = wr.permute(0, 2, 1, 3)
        
        new_rep = new_rep + bias

    return new_rep

def compute_attention_for_head(query: Tensor, key: Tensor, value: Tensor, relation_k:Optional[Tensor]=None, relation_v:Optional[Tensor]=None, mask: Optional[Tensor]=None, dropout:Optional[Module]=None, weight_only:Optional[bool]=None) -> Tuple[Tensor, Tensor]:
    """Compute attention for each head and create a new representation

    :param query: query tensor with shape: [batch, heads, len_queries, depth]
    :type query: Tensor
    :param key: key tensor with shape: [batch, heads, len_keys, depth]
    :type key: Tensor
    :param value: value tensor with shape: [batch, heads, len_keys, depth]
    :type value: Tensor
    :param relation_k: relation tensor for key, the shape is [batch, len_queries, len_keys, depth]
    :type relation_k: Optional[Tensor], optional
    :param relation_v: relation tensor for value, the shape is [batch, len_queries, len_keys, depth]
    :type relation_v: Optional[Tensor], optional
    :param mask: mask tensor with shape: [batch, len_queries, len_keys]
    :type mask: Optional[Tensor], optional
    :param dropout: dropout module, defaults to None
    :type dropout: Optional[Module], optional
    :param weight_only: When set true, only return attention weights
    :type weight_only: Optional[bool], optional
    :return: new representation with shape: [batch, heads, len_queries, depth] and attention weights with shape: [batch, heads, len_queries, len_keys]
    :rtype: Tuple[Tensor, Tensor]
    """
    # Reshape if necessary
    if len(query.shape) == 3:
        query.
    
    # query shape: [batch, num queries, d_model]
    # key shape: [batch, num kv, d_model]
    # value shape: [batch, num kv, d_model]
    # relations_k shape: [batch, num queries, num kv, (d_model // h)]
    # relations_v shape: [batch, num queries, num kv, (d_model // h)]
    # mask shape: [batch, num queries, num kv]
    if mask is not None:
        # Same mask applied to all h heads.
        # mask shape: [batch, 1, num queries, num kv]
        mask = mask.unsqueeze(1)
    nbatches = query.size(0)

    # 1) Do all the linear projections in batch from d_model => h x d_k
    query, key, value = \
        [l(x).view(nbatches, -1, self.h, self.d_k).transpose(1, 2)
            for l, x in zip(self.linears, (query, key, value))]

    
    # Compute attention logits
    logits = compute_attention_logits(query, key, relation_k)

    # Softmax attention weights
    if mask is not None:
        mask = mask.unsqueeze(1)
        logits = logits.masked_fill(mask == 0, float("-inf"))
    
    attn_weights = torch.nn.functional.softmax(logits, dim=-1)

    # Skip computing new representation
    if weight_only:
        return None, attn_weights

    # Compute new representation
    new_rep = compute_new_representation(attn_weights, value, relation_v)

    return new_rep, attn_weights



def compute_attention(query: Tensor, key: Tensor, value: Tensor, relation_k:Optional[Tensor]=None, relation_v:Optional[Tensor]=None, mask: Optional[Tensor]=None, dropout:Optional[Module]=None, weight_only:Optional[bool]=None) -> Tuple[Tensor, Tensor]:
    """Compute attention and create a new representation

    :param query: query tensor with shape: [batch, len_queries, depth]
    :type query: Tensor
    :param key: key tensor with shape: [batch, len_keys, depth]
    :type key: Tensor
    :param value: value tensor with shape: [batch, len_keys, depth]
    :type value: Tensor
    :param relation_k: relation tensor for key, the shape is [batch, len_queries, len_keys, depth]
    :type relation_k: Optional[Tensor], optional
    :param relation_v: relation tensor for value, the shape is [batch, len_queries, len_keys, depth]
    :type relation_v: Optional[Tensor], optional
    :param mask: mask tensor with shape: [batch, len_queries, len_keys]
    :type mask: Optional[Tensor], optional
    :param dropout: dropout module, defaults to None
    :type dropout: Optional[Module], optional
    :param weight_only: When set true, only return attention weights
    :type weight_only: Optional[bool], optional
    :return: new representation with shape: [batch, heads, len_queries, depth] and attention weights with shape: [batch, heads, len_queries, len_keys]
    :rtype: Tuple[Tensor, Tensor]
    """
    # TODO: Need to reshape the tensors to [batch, heads, len_queries, depth]
    # Reshape if necessary
    if len(query.shape) == 3:
        query.
    
    # query shape: [batch, num queries, d_model]
    # key shape: [batch, num kv, d_model]
    # value shape: [batch, num kv, d_model]
    # relations_k shape: [batch, num queries, num kv, (d_model // h)]
    # relations_v shape: [batch, num queries, num kv, (d_model // h)]
    # mask shape: [batch, num queries, num kv]
    if mask is not None:
        # Same mask applied to all h heads.
        # mask shape: [batch, 1, num queries, num kv]
        mask = mask.unsqueeze(1)
    nbatches = query.size(0)

    # 1) Do all the linear projections in batch from d_model => h x d_k
    query, key, value = \
        [l(x).view(nbatches, -1, self.h, self.d_k).transpose(1, 2)
            for l, x in zip(self.linears, (query, key, value))]

    return compute_attention_for_head(query, key, value, relation_k, relation_v, mask, dropout, weight_only)