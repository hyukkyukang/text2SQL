import functools
import operator

def flatten_list(list_of_list):
    return functools.reduce(operator.iconcat, list_of_list, [])