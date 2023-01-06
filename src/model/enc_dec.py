import torch
from hkkang_utils import tensor as tensor_utils
from omegaconf import DictConfig
from torch.nn import Module

from src.data.data import TextToSQLDatum
from src.model.attention import compute_attention
from src.preprocess.relations import TOTAL_RELATION_NUM


class Text2SQLModel(Module):
    def __init__(self, cfg: DictConfig, encoder: Module, decoder: Module):
        super(Text2SQLModel, self).__init__()
        self.cfg = cfg.model
        self.encoder: Module = encoder
        self.decoder: Module = decoder

        # Parameters related to memory attention
        hidden_size = self.cfg.encoder.d_model
        self.mem_attn_linears = torch.nn.ModuleList([torch.nn.Linear(hidden_size, hidden_size)] for _ in range(
            self.cfg.memory_attn.num_layers
        ))
        self.mem_attn_dropout = torch.nn.Dropout(self.cfg.memory_attn.dropout)
        self.mem_attn_relation_k_emb = torch.nn.Embedding(TOTAL_RELATION_NUM, hidden_size)
        self.mem_attn_relation_v_emb = torch.nn.Embedding(TOTAL_RELATION_NUM, hidden_size)

    def compute_alignment_matrices(self, data, encoder_outputs):
        # find indices of begin and end indices of schema tokens
        all_memory = []
        column_memory = []
        table_memory = []
        for datum, encoder_output in zip(data, encoder_outputs):
            nl_tok_len = len(datum.nl_tokens)
            column_tok_len = len(datum.schema.columns)
            table_tok_len = len(datum.schema.tables)
            col_rep = encoder_output[nl_tok_len:nl_tok_len+column_tok_len]
            tab_rep = encoder_output[nl_tok_len+column_tok_len:nl_tok_len+column_tok_len+table_tok_len]
            all_memory.append(encoder_output[:nl_tok_len+column_tok_len+table_tok_len])
            column_memory.append(col_rep)
            table_memory.append(tab_rep)
            
        # TODO: Need to get relation embeddings

        ## Batch tensors
        batched_all_memory, all_memory_mask = tensor_utils.zero_pad_batching_one_dim(all_memory)
        batched_column_memory, column_memory_mask = tensor_utils.zero_pad_batching_one_dim(column_memory)
        batched_table_memory, table_memory_mask = tensor_utils.zero_pad_batching_one_dim(table_memory)

        ## Create mask
        m2c_mask = tensor_utils.att_mask_from_individual_masks(all_memory_mask, column_memory_mask)
        m2t_mask = tensor_utils.att_mask_from_individual_masks(all_memory_mask, table_memory_mask)

        ## compute attention
        _, m2c_alignment_matrix = compute_attention(batched_all_memory, batched_column_memory, batched_column_memory, mask=m2c_mask,
                                                    relation_k=None, relation_v=None, dropout=None, weight_only=True)
        
        _, m2t_alignment_matrix = compute_attention(batched_all_memory, batched_table_memory, batched_table_memory, mask=m2t_mask,
                                                    relation_k=None, relation_v=None, dropout=None, weight_only=True)

        return m2c_alignment_matrix, m2t_alignment_matrix

    def forward(self, data: TextToSQLDatum):
        # Encode
        encoder_outputs = self.encoder(
                            input_token=data.input_token,
                            lm_att_mask=data.att_mask,
                            lm_tok_type_ids=data.tok_type_ids,
                            non_sep_tok_masks=data.non_sep_tok_masks,
                            relation_matrix=data.relation_matrix)

        # Compuate alignment matrix
        m2c_alignment_matrix, m2t_alignment_matrix = self.compute_alignment_matrices(data, encoder_outputs)

        # Decode
        decoded_result = self.decoder(encoder_outputs, m2c_alignment_matrix, m2t_alignment_matrix)
        return decoded_result
