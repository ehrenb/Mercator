"""read in output of mercator and build a networkx graph"""
import json
import logging

import networkx as nx
from networkx.readwrite import json_graph

from Mercator.utils.ComponentType import ComponentType

logger = logging.getLogger('mercator')


def get_color_component(c):
    """give a grouping for a component type

    non-components get '1' -- default blue
    """
    if c['component_type'] == ComponentType.ACTIVITY:
        return 4#blue
    if c['component_type'] == ComponentType.RECEIVER:
        return 8#light blue
    if c['component_type'] == ComponentType.PROVIDER:
        return 5#green
    if c['component_type'] == ComponentType.SERVICE:
        return 7#orange
    else:
        return 1

def create_graph(classes=[], json_path=None):
    
    if json_path:
        classes = []
        with open(json_path,'r') as f:
            classes = json.load(f)
        logger.info('loaded {json_path}'.format(json_path=json_path))


    G=nx.MultiDiGraph()
    for idx, c in enumerate(classes):
        G.add_node(idx, attr_dict=c, group=get_color_component(c))

    tmp_G = nx.MultiDiGraph(G)
    return add_edges(tmp_G)

def add_edges(G):
    """add edges based on some defined rules about inter-class relations"""
    n_to_class_name_map = build_n_to_class_name_map(G)

    #xref from edges
    for n in G:
        #print('## '+n)
        #class xref from (? -> n)
        for xref_from_name in G.node[n]['xref_from']:
            method_xref_from_name = xref_from_name['method']#unused
            class_xref_from_name = xref_from_name['class']
            class_xref_from_n = __map_lookup(n_to_class_name_map, class_xref_from_name)
            
            if not class_xref_from_n == n:
                G.add_edge(class_xref_from_n, n, attr_dict=xref_from_name) if class_xref_from_n else None
            #print('add_edge {class_xref_from_name} -> {n}'.format(class_xref_from_name=class_xref_from_name, n=n))
            #G.add_edge(class_xref_from_name, n, attr_dict=xref_from_name) #if class_xref_from_n else None

        #class xref to(n -> ?)
        for xref_to_name in G.node[n]['xref_to']:
            method_xref_to_name = xref_to_name['method']#unused
            class_xref_to_name = xref_to_name['class']
            class_xref_to_n = __map_lookup(n_to_class_name_map, class_xref_to_name)
            
            if not class_xref_to_n == n:
                G.add_edge(n, class_xref_to_n, attr_dict=xref_to_name) if class_xref_to_n else None
#            G.add_edge(n, class_xref_to_name, attr_dict=xref_to_name) #if class_xref_to_n else None


        #method xref from (todo: check suspected overlap with above) (? -> n)
        for method in G.node[n]['methods']:
            for xref_from_name in method['xref_from']:
                method_xref_from_name = xref_from_name['method']
                class_xref_from_name = xref_from_name['class']
                class_xref_from_n = __map_lookup(n_to_class_name_map, class_xref_from_name)
                
                if not class_xref_from_n == n:
                    G.add_edge(class_xref_from_n, n, attr_dict=xref_from_name) if class_xref_from_n else None
#                G.add_edge(class_xref_from_name, n, attr_dict=xref_from_name) #if class_xref_from_n else None

        #method xref to(n -> ?)
        for xref_to_name in G.node[n]['methods']:
            for xref_to_name in method['xref_to']:
                method_xref_to_name = xref_to_name['method']
                class_xref_to_name = xref_to_name['class']
                class_xref_to_n = __map_lookup(n_to_class_name_map, class_xref_to_name)
                
                if not class_xref_to_n == n:
                    G.add_edge(n, class_xref_to_n, attr_dict=xref_to_name) if class_xref_to_n else None
                #G.add_edge(n, class_xref_to_name, attr_dict=xref_to_name) #if class_xref_to_n else None
        #field xref from (read) (? -> n)
        for field in G.node[n]['fields']:
            for xref_read_name in field['xref_read']:
                field_xref_read_name = xref_read_name['method']
                class_xref_read_name = xref_read_name['class']
                class_xref_from_n = __map_lookup(n_to_class_name_map, class_xref_read_name)
                
                if not class_xref_from_n == n:
                    G.add_edge(class_xref_from_n, n, attr_dict=xref_read_name) if class_xref_from_n else None
                #G.add_edge(class_xref_read_name, n, attr_dict=xref_read_name) #if class_xref_from_n else None

        #field xref to (write) (n -> ?)
        for field in G.node[n]['fields']:
            for xref_write_name in field['xref_write']:
                field_xref_write_name = xref_write_name['method']
                class_xref_write_name = xref_write_name['class']
                class_xref_write_n = __map_lookup(n_to_class_name_map, class_xref_write_name)
                # print(class_xref_write_n)
                
                if not class_xref_write_n == n:
                    G.add_edge(class_xref_write_n, n, attr_dict=xref_write_name) if class_xref_write_n else None
                #G.add_edge(class_xref_write_name, n, attr_dict=xref_write_name) #if class_xref_write_n else None

    # for u,v,d in G.edges(data=True):
    #     print(u)
    #     print(v)
    #     print(d)
    #     d['source'] = G.nodes()[d['source']]['id']
    #     d['target'] = G.nodes()[d['target']]['id']

    return G

def write_graph(G, out_file):
    data = json_graph.node_link_data(G)
    with open(out_file, 'w') as f:
        json.dump(data, f, indent=4, separators=(',',': '),sort_keys=True)


def build_n_to_class_name_map(G):
    m = {}
    for n in G:
        m[n] = G.node[n]['name']
    return m



def __map_lookup(n_to_class_name_map, class_name):
    try:
        n = [k for k,v in n_to_class_name_map.items() if v == class_name][0]
        return n
    except IndexError:
        #references to things outside of the code, like native Android OS stuff, and Java
        return None


def get_class_subgraph(G, class_names=[]):
    """Build a subgraph that has the nodes from class_names
        re add edges based on new subgraph
    """
    ns = []
    n_to_class_name_map = build_n_to_class_name_map(G)

    for c in class_names:
        n = __map_lookup(n_to_class_name_map, c)
        ns.append(n)

    #not using nx.subgraph, because it seems to carry over edges as well
    #the subgraph i want to generate should show inter-connectivity of nodes
    #whose class_name is in class_names, so keepng old edges means there
    #are edges to nodes that may not exist in the new subgraph

    H = nx.MultiDiGraph()
    #Lookup each old node from G and add it w/ data with a new index in H
    for idx, n in enumerate(ns):
        H.add_node(idx, **G.node[n])
    
    #Rebuild edge relationships based on the new nodes in H
    H = add_edges(H)
    return H



if __name__ == '__main__':
    data = None
    with open('/home/branden/Mercator/analysis/56a0093a3a6b55a47e3b1ee6051467e2.json','r') as f:
        data = json.load(f)
    G = json_graph.node_link_graph(data)

    component_names = []
    for node in G:
        node_tmp = G.node[node]
        if node_tmp['component_type']:
            component_names.append(node_tmp['name'])
    subgraph = get_class_subgraph(G, 
                                 class_names=component_names)
    write_graph(subgraph, '/home/branden/Mercator/analysis/56a0093a3a6b55a47e3b1ee6051467e2.json.subgraph')
