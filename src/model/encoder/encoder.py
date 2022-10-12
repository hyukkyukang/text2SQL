import torch
import transformers
import src.utils.tensor as tensor_utils
from omegaconf import DictConfig
from src.preprocess.relations import TOTAL_RELATION_NUM
from src.model.transformer.encoder import RelationalTransformerEncoder, RelationalTransformerEncoderLayer

class Encoder(torch.nn.Module):
    def __init__(self, cfg: DictConfig, tokenizer: transformers.PreTrainedTokenizer):
        super(Encoder, self).__init__()
        self.cfg = cfg.model.encoder
        self.tokenizer = tokenizer
        self.lm = transformers.AutoModel.from_pretrained(self.cfg.lm_model_version)
        self.RATransformer = RelationalTransformerEncoder(
            encoder_layer=RelationalTransformerEncoderLayer(d_model=self.cfg.d_model, 
                                                            nhead=self.cfg.nhead, 
                                                            num_relations=TOTAL_RELATION_NUM,
                                                            batch_first=True),
            num_layers=self.cfg.num_layers
        )

    def forward(self, input_token, lm_att_mask, lm_tok_type_ids, 
                non_sep_tok_input_indices, att_mask_token_wo_sep_token, relation_matrix):
        # Encode with Language model
        assert len(input_token) <= self.lm.config.max_position_embeddings, f"Input length {len(input_token)} exceeds maximum length {self.lm.config.max_position_embeddings}"
        encoded_tensor = self.lm(input_token, attention_mask=lm_att_mask, token_type_ids=lm_tok_type_ids)[0]
        
        # Extract tensors that are not sep tokens
        encoded_tensor_wo_sep_tok = self._extract_non_sep_token(encoded_tensor, non_sep_tok_input_indices)
        
        # Further Encode with Relation aware Transformer
        encoded_tensor2 = self.RATransformer(encoded_tensor_wo_sep_tok, relation_matrix, src_key_padding_mask=att_mask_token_wo_sep_token)
        
        # Relational aware transformer
        return encoded_tensor2
    

    def _extract_non_sep_token(self, input_token, non_sep_tok_input_indices):
        non_sep_inputs = []
        for i, indices in enumerate(non_sep_tok_input_indices):
            non_sep_inputs.append(input_token[i][:len(indices)][indices])
        return tensor_utils.zero_pad_batching(non_sep_inputs)