

class Parameter:
    name = None
    unit = None
    default = None

    def __init__(name, unit, default):
        self.name = name
        self.unit = unit
        self.default = default


class EditableNode:
    name = None
    inputs = []
    outputs = []
    parameters = []

    def __init__(self, name):
        self.name = name

    def add_input(self, editable_node):
        self.inputs.append(editable_node)

    def add_output(self, editable_node):
        self.outputs.append(editable_node)

    def add_parameter(self, name, unit, default):
        self.add_parameter(Parameter(name, unit, default))

    def add_parameter(self, parameter):
        parameters.append(parameter)


class RuntimeNode:
    # adds consistency checks
    inputs = []
    outputs = []
    parameters = [] # each should have a name, units, and a default value

    def __init__(self, editable_node):
        self.inputs = editable_node.inputs.copy()  #probably needs to be deeper
        self.outputs = editable_node.outputs.copy()  #probably needs to be deeper
        self.parameters = editable_node.parameters.copy()  #probably needs to be deeper

        self.check()

    def check(self):
        pass

    def run(self):
        pass


class EditableNodeGraph:
    editable_nodes = []

    def add_node_by_name(self, name):
        editable_node = EditableNode(name)
        self.add_node(editable_node)
        return editable_node

    def add_node(self, editable_node):
        self.editable_nodes.append(editable_node)

    def buildAndCheck(self):
        return RuntimeNodeGraphBuilder.buildAndCheck(self)


class RuntimeNodeGraphBuilder:
    def buildAndCheck(editable_graph):
        runtime_graph = RuntimeNodeGraph()
        for editable_node in editable_graph.editable_nodes:
            runtime_graph.add_node(editable_node)

        runtime_graph.check()

        return runtime_graph


class RuntimeNodeGraph:
    runtime_nodes = []

    def add_node(self, editable_node):
        self.runtime_nodes.append(RuntimeNode(editable_node))

    def check(self):
        for runtime_node in self.runtime_nodes:
            runtime_node.check()

    def run(self):
        for runtime_node in self.runtime_nodes:
            runtime_node.run()
