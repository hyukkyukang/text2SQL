import json
import asdl
from pathlib import Path

PRIMITIVE_TYPE_MAP = {
    "singleton": bool,
    "int": int,
    "string": str,
    "object": float,
}

class VisitorBase(object):
    """Generic tree visitor for ASTs."""
    def __init__(self):
        self.cache = {}

    def visit(self, obj, *args):
        def find_corresponding_method(klass):
            # Find method that corresponds to the given object
            methname = "visit_" + klass.__name__
            meth = getattr(self, methname, None)
            if meth is None:
                # Find method that corresponds to the given object superclass
                methname = "visit_" + klass.__bases__[0].__name__
                meth = getattr(self, methname, None)
            if meth is None:
                # Raise error if no method found
                raise NotImplementedError("No method for %s" % klass)
            return meth
        klass = obj.__class__
        meth = self.cache.get(klass)
        if meth is None:
            meth = find_corresponding_method(klass)
        self.cache[klass] = meth
        # Call the corresponding method
        return meth(obj, *args)


class ASDL2Class(VisitorBase):
    def __init__(self, asdl_file: Path):
        super().__init__()
        self.asdl_file = asdl_file
        self.asdl_class = None

    def __call__(self):
        self.asdl = asdl.parse(self.asdl_file)
        
        if asdl.check(self.asdl):
            self.visit(self.asdl)
        else:
            raise ValueError

        return self.asdl_class

    def _gen__init__(self, attr_seq_opt_type_dict):
        def init(inner_self, **kwargs):
            for attr, (seq, opt, type_) in attr_seq_opt_type_dict.items():
                # Override with passed parameter or Initialize according to the type
                if attr in kwargs:
                    setattr(inner_self, attr, kwargs[attr])
                elif seq:
                    setattr(inner_self, attr, [])
                elif opt:
                    setattr(inner_self, attr, None)
                else:
                    setattr(inner_self, attr, getattr(self.asdl_class, type_)())
        return init

    def _gen_to_dict(self):
        def to_dict(inner_self):
            result_dict = {}
            result_dict["_type"] = inner_self.__class__.__name__
            result_dict.update(vars(inner_self))
            # Recursively call to_dict to convert all the children into dict
            for attr, child in result_dict.items():
                if child == None:
                    result_dict[attr] = None
                elif isinstance(child, list):
                    result_dict[attr] = []
                    for c in child:
                        result_dict[attr].append(c.to_dict())
                elif isinstance(child, (bool, int, str, float)):
                    result_dict[attr] = child
                else:
                    result_dict[attr] = child.to_dict()
            return result_dict

        return to_dict

    def _gen_attr_dict(self, attr_seq_opt_type_dict, **funcs):
        attr_dict = {}
        for attr in attr_seq_opt_type_dict.keys():
            attr_dict[attr] = None
        for k, v in funcs.items():
            attr_dict[k] = v

        return attr_dict

    def _gen__str__(self) -> str:
        def __str__(inner_self):
            return json.dumps(inner_self.to_dict(), indent=4)

        return __str__

    def visit_Module(self, node: asdl.Module):
        # Create attr dict
        self.attr_dict = {node_type: None for node_type in node.types.keys()}
        
        # Add primitive types
        for asdl_type, python_type in PRIMITIVE_TYPE_MAP.items():
            self.attr_dict[asdl_type] = python_type

        # Collect constructors
        self.constructors = []
        for dfn in node.dfns:
            self.visit(dfn)
        for type_name, ptype, attr_dict in self.constructors:
            self.attr_dict[type_name] = type(
                type_name, (self.attr_dict[ptype],), attr_dict
            )
        self.asdl_class = type(node.name, (object,), self.attr_dict)

    def visit_Type(self, node: asdl.Type):
        # TODO: Find out the node type here??
        attr_seq_opt_type_dict = {}
        self.visit(node.value, node.name, attr_seq_opt_type_dict)

        __init__ = self._gen__init__(attr_seq_opt_type_dict)
        __str__ = self._gen__str__()
        to_dict = self._gen_to_dict()
        attr_dict = self._gen_attr_dict(
            attr_seq_opt_type_dict,
            __init__=__init__,
            to_dict=to_dict,
            __str__=__str__
        )
        self.attr_dict[node.name] = type(node.name, (object,), attr_dict)

    def visit_Sum(self, node: asdl.Sum, ptype: str, attr_type_dict):
        for t in node.types:
            self.visit(t, ptype)

    def visit_Constructor(self, node: asdl.Constructor, ptype: str):
        attr_seq_opt_type_dict = {}
        for f in node.fields:
            self.visit(f, attr_seq_opt_type_dict)

        __init__ = self._gen__init__(attr_seq_opt_type_dict)
        to_dict = self._gen_to_dict()
        attr_dict = self._gen_attr_dict(
            attr_seq_opt_type_dict, __init__=__init__, to_dict=to_dict
        )
        self.attr_dict[node.name] = type(node.name, (object,), attr_dict)
        self.constructors.append((node.name, ptype, attr_dict))

    def visit_Field(self, node: asdl.Field, attr_seq_opt_type_dict):
        attr_seq_opt_type_dict[node.name] = (node.seq, node.opt, node.type)

    def visit_Product(self, node: asdl.Product, ptype: str, attr_seq_opt_type_dict):
        for f in node.fields:
            self.visit(f, attr_seq_opt_type_dict)