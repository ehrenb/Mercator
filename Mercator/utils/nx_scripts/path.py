import json
from pprint import pprint

import networkx as nx
from networkx.readwrite import json_graph

import matplotlib.pyplot as plt


graph = None
with open('02e231f85558f37da6802142440736f6/02e231f85558f37da6802142440736f6_component_graph.json') as f:
    graph = json.load(f)
nx_graph = json_graph.node_link_graph(graph)

pos = nx.circular_layout(nx_graph, scale=0.2)#k,iterations used to increase distance btwn nodes

nodes = nx_graph.nodes(data=True)

#custom labels:
labels = {}
for (p, d) in nodes:
    labels[p] = d['attr_dict']['name']

edge_labels=dict([((u,v,),d['attr_dict']['method'])
             for u,v,d in nx_graph.edges(data=True)])


#Determine index of src/dst based on name attribute
source = None
source_class_name = 'Lkrep/itmtd/ywtjexf/UampleUverlayUhowUctivity;'
for (p, d) in nodes:
    if d['attr_dict']['name'] == source_class_name:
        source = p
        break

print("Source: ")
print(source)

dest = None
dest_class_name = 'Lkrep/itmtd/ywtjexf/MasterInterceptor;'
for (p, d) in nodes:
    if d['attr_dict']['name'] == dest_class_name:
        dest = p
        break

print("Dest: ")
print(dest)

# Has path?
print(nx.has_path(nx_graph, source, dest))


# Shorest path
shortest_path = nx.shortest_path(nx_graph, source=source, target=dest)
path_str = ' -> '.join([nodes[i]['attr_dict']['name'] for i in shortest_path])
print(path_str)

shortest_path_edges = list(zip(shortest_path,shortest_path[1:]))

# Path length
print(nx.shortest_path_length(nx_graph, source=source, target=dest))

# Drawing
nx.draw(nx_graph, pos, node_size=60, node_color='k')
nx.draw_networkx_nodes(nx_graph,pos, nodelist=shortest_path, node_color='r')
nx.draw_networkx_edges(nx_graph,pos, edgelist=shortest_path_edges, edge_color='r')
nx.draw_networkx_labels(nx_graph, pos, labels, font_size=8, alpha=0.5)
nx.draw_networkx_edge_labels(nx_graph, pos, edge_labels, font_size=8, alpha=0.5)

plt.axis('equal')
plt.savefig("graph_shortest_path.png")
