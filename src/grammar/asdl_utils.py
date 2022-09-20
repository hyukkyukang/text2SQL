import asdl

class ASTWrapperVisitor(asdl.VisitorBase):
    '''Used by ASTWrapper to collect information.

    - put constructors in one place.
    - checks that all fields have names.
    - get all optional fields.
    '''

    def __init__(self):
        # type: () -> None
        super(ASTWrapperVisitor, self).__init__()
        self.constructors = {}  # type: Dict[str, asdl.Constructor]
        self.sum_types = {}  # type: Dict[str, asdl.Sum]
        self.product_types = {}  # type: Dict[str, asdl.Product]
        self.fieldless_constructors = {}  # type: Dict[str, asdl.Constructor]

    def visitModule(self, mod):
        # type: (asdl.Module) -> None
        for dfn in mod.dfns:
            self.visit(dfn)

    def visitType(self, type_):
        # type: (asdl.Type) -> None
        self.visit(type_.value, str(type_.name))

    def visitSum(self, sum_, name):
        # type: (asdl.Sum, str) -> None
        self.sum_types[name] = sum_
        for t in sum_.types:
            self.visit(t, name)

    def visitConstructor(self, cons, _name):
        # type: (asdl.Constructor, str) -> None
        assert cons.name not in self.constructors
        self.constructors[cons.name] = cons
        if not cons.fields:
            self.fieldless_constructors[cons.name] = cons
        for f in cons.fields:
            self.visit(f, cons.name)

    def visitField(self, field, name):
        # type: (asdl.Field, str) -> None
        # pylint: disable=no-self-use
        if field.name is None:
            raise ValueError(f'Field of type {field.type} in {name} lacks name')

    def visitProduct(self, prod, name):
        # type: (asdl.Product, str) -> None
        self.product_types[name] = prod
        for f in prod.fields:
            self.visit(f, name)