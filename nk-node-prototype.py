#!/usr/bin/env python3

from nodegraph_prototype import *

editable_graph = EditableNodeGraph()

reactor_core = editable_graph.add_node_by_name("Reactor Core")

emergency_cooling_system = editable_graph.add_node_by_name("Emergency Cooling System")
emergency_cooling_system.add_input(reactor_core)

primary_cooling_system = editable_graph.add_node_by_name("Primary Cooling System")
primary_cooling_system.add_input(reactor_core)

heat_exchanger = editable_graph.add_node_by_name("Heat Exchanger")
heat_exchanger.add_input(primary_cooling_system)

secondary_cooling_system = editable_graph.add_node_by_name("Secondary Cooling System")
secondary_cooling_system.add_input(heat_exchanger)

turbine = editable_graph.add_node_by_name("Turbine")
turbine.add_input(secondary_cooling_system)

cooling_tower = editable_graph.add_node_by_name("Cooling Tower")
cooling_tower.add_input(secondary_cooling_system)
cooling_tower.add_input(turbine)

runtime_graph = editable_graph.buildAndCheck()
runtime_graph.run()
