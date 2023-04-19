def import_module(module_path, attr_name):
    mod = __import__(module_path, fromlist=[attr_name])
    return getattr(mod, attr_name)
    