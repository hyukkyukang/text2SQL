from typing import List, Tuple

import torch
import transformers
from omegaconf import DictConfig

import src.utils.tensor as tensor_utils
from src.model.transformer.encoder import (RelationalTransformerEncoder,
                                           RelationalTransformerEncoderLayer)
from src.preprocess.relations import TOTAL_RELATION_NUM


class RAEncoder(torch.nn.Module):
    def __init__(self, cfg: DictConfig):
        super(RAEncoder, self).__init__()
        self.cfg = cfg.model.encoder
        self.lm = transformers.AutoModel.from_pretrained(self.cfg.lm_model_version)
        self.RATransformer = RelationalTransformerEncoder(
                            encoder_layer=RelationalTransformerEncoderLayer(d_model=self.cfg.d_model, 
                                                            nhead=self.cfg.nhead, 
                                                            num_relations=TOTAL_RELATION_NUM,
                                                            batch_first=True),
                            num_layers=self.cfg.num_layers)

    @property
    def use_avg_emb(self):
        return self.cfg.use_avg_emb

    def forward(self, input_token, lm_att_mask, lm_tok_type_ids, non_sep_tok_masks, relation_matrix):
        # Encode with Language model
        assert len(input_token) <= self.lm.config.max_position_embeddings, f"Input length {len(input_token)} exceeds maximum length {self.lm.config.max_position_embeddings}"
        encoded_tensor = self.lm(input_token, attention_mask=lm_att_mask, token_type_ids=lm_tok_type_ids)[0]

        # Extract tensors that are not sep tokens
        encoded_tensor_wo_sep_tok, att_mask_wo_sep_tok = self._extra_representative_tokens(encoded_tensor, non_sep_tok_masks)

        # Further Encode with Relation aware Transformer. (Note that mask is inverted because of the way the transformer is implemented)
        return self.RATransformer(encoded_tensor_wo_sep_tok, relation_matrix, src_key_padding_mask=torch.logical_not(att_mask_wo_sep_tok))

    def _extra_representative_tokens(self, input_token: torch.Tensor, non_sep_tok_masks: List[torch.Tensor]) -> Tuple[torch.Tensor, torch.Tensor]:
        non_sep_inputs = []
        for b, non_sep_tok_mask in enumerate(non_sep_tok_masks):
            sep_tok_indices = (non_sep_tok_mask==False).nonzero(as_tuple=False).squeeze(1)
            # NL tokens
            nl_tokens = input_token[b][1:sep_tok_indices[0]]
            # Schema tokens: use SEP token as the representative token for each schema entity
            schema_tokens = input_token[b][sep_tok_indices]
            # Use average embedding of SEP token and the last token of the entity
            if self.use_avg_emb:
                # Get last token index for each schema entity
                last_tok_indices = sep_tok_indices[1:] - 1
                last_tok_indices = torch.cat([last_tok_indices, torch.tensor([len(input_token[b])-1])])
                # Get last token and compute average
                last_toks = input_token[b][last_tok_indices]
                schema_tokens = (schema_tokens + last_toks) / 2.0
            # Aggregate
            non_sep_inputs.append(torch.cat([nl_tokens, schema_tokens], dim=0))
        # Batch non_sep_inputs and create attention mask
        batched_non_sep_inputs = tensor_utils.zero_pad_batching(non_sep_inputs)
        non_sep_input_att_mask = tensor_utils.zero_pad_batching([torch.ones(len(non_sep_input), dtype=torch.bool) for non_sep_input in non_sep_inputs])
        return batched_non_sep_inputs, non_sep_input_att_mask
