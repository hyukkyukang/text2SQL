import os
import json

def get_files_in_directory(dir_path, filter_func):
    return [os.path.join(dir_path, f) for f in os.listdir(dir_path) if os.path.isfile(os.path.join(dir_path, f)) and filter_func(f)]

def read_json_file(file_path):
    with open(file_path, 'r') as f:
        return json.load(f)
    
def get_files_in_all_sub_directories(root_dir_path, filter_func):
    return [os.path.join(dp, f) for dp, dn, filenames in os.walk(root_dir_path) for f in filenames if filter_func(f)]
