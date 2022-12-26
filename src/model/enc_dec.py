from torch.nn import Module
from omegaconf import DictConfig
from src.data.data import TextToSQLDatum

class Text2SQLModel(Module):
    def __init__(self, cfg: DictConfig, encoder: Module, decoder: Module):
        super(Text2SQLModel, self).__init__()
        self.cfg = cfg.model
        self.encoder: Module = encoder
        self.decoder: Module = decoder

    def forward(self, data: TextToSQLDatum):
        # Encode
        encoder_outputs = self.encoder(
                            input_token=data.input_token,
                            lm_att_mask=data.att_mask,
                            lm_tok_type_ids=data.tok_type_ids,
                            non_sep_tok_masks=data.non_sep_tok_masks,
                            relation_matrix=data.relation_matrix)
        
        # Compute alignment matrix
        m2c_alignment_matrix = None
        m2c_alignment_matrix = None

        # Decode
        decoded_result = self.decoder(encoder_outputs, m2c_alignment_matrix, m2c_alignment_matrix)
        return decoded_result
