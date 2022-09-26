import re

def multi_space_to_single_space(string):
    return re.sub(' +', ' ', string)

def is_int(string):
    try:
        int(string)
        return True
    except ValueError:
        return False