import attrs
import logging

from omegaconf import OmegaConf

@attrs.define
class MyLogger():
    config: OmegaConf = attrs.field()
    log_path: str = attrs.field()
    
    def __attrs_post_init__(self):
        logging.basicConfig(format='%(asctime)s %(message)s', datefmt='%m/%d/%Y %I:%M:%S %p')
    
    def print(self, msg):
        logging.info(msg)
        pass
    
    def warn(self, msg):
        logging.warn(msg)
        pass
    
    def error(self, msg):
        logging.error(msg)
        pass
    
    
    