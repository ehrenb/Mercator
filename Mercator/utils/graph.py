"""read in output of mercator and build a networkx graph"""
import json
import logging
from pprint import pprint
import time


import networkx as nx
from networkx.readwrite import json_graph

from Mercator.utils.ComponentType import ComponentType

logger = logging.getLogger('mercator')


def get_color_component(c):
    """give a grouping for a component type

    non-components get '1' -- default blue
    """
    if c['component_type'] == ComponentType.ACTIVITY:
        return "blue"#blue 4
    if c['component_type'] == ComponentType.RECEIVER:
        return "yellow"# yellow 8
    if c['component_type'] == ComponentType.PROVIDER:
        return "green"#green 5 
    if c['component_type'] == ComponentType.SERVICE:
        return "orange"#orange 7
    else:
        return "black" #1 #blue

def create_graph(classes=[], json_path=None):
    """Given a list of class names, """
    if json_path:
        classes = []
        with open(json_path,'r') as f:
            classes = json.load(f)
        print('loaded {json_path}'.format(json_path=json_path))

    print('adding nodes')
    start = time.time()
    G=nx.MultiDiGraph()
    for idx, c in enumerate(classes):
        G.add_node(idx, attr_dict=c, color=get_color_component(c))
    end = time.time()
    elapsed = end-start
    print('done adding nodes took {}'.format(end-start))


    print('before tmp_G')
    start = time.time()
    tmp_G = nx.MultiDiGraph(G)
    print('after tmp_G')
    end = time.time()
    elapsed = end-start
    print('done adding nodes tmp_G took {}'.format(end-start))

    return add_edges(tmp_G)

def duplicate_edge(G, u,v,data):
    for e in G.edges_iter(data=True):
        old_u = e[0]
        old_v = e[1]
        old_data = e[2]
        if u == old_u and v == old_v and data == old_data:
            return True
    return False


known_edges = []

def add_edges(G):
    """add edges based on some defined rules about inter-class relations"""
    n_to_class_name_map = build_n_to_class_name_map(G)
    add_edges_start = time.time()
    print('adding edges to tmp_G')

    total_class_xref_from = 0
    total_class_xref_to = 0
    total_method_xref_from = 0
    total_method_xref_to = 0
    total_field_xref_read = 0
    total_field_xref_write = 0
    #xref from edges
    for n in G:
        #print('## '+n)
        #class xref from (? -> n)
        #print('edges class xref_from')
        start = time.time()
        edges = [d[2] for d in G.edges(n,data=True)]
        for xref_from_name in G.node[n]['xref_from']:
            method_xref_from_name = xref_from_name['method']#unused
            class_xref_from_name = xref_from_name['class']
            class_xref_from_n = __map_lookup(n_to_class_name_map, class_xref_from_name)
            #dont record edges leading back to self
            if not class_xref_from_n == n:
                # if duplicate_edge(G, class_xref_from_n, n, xref_from_name):
                #     print('duplicate class xref from')
                #     continue
                #dedupe edges based on the data inside..still unsure why dupes are being added
                dedupe_start_time = time.time()
                if xref_from_name in edges:
                    continue
                dedupe_end_time = time.time()
                #print('dedupe time took {}'.format(dedupe_end_time - dedupe_start_time))
                total_class_xref_from+=1
                G.add_edge(class_xref_from_n, n, attr_dict=xref_from_name) if class_xref_from_n else None
            #print('add_edge {class_xref_from_name} -> {n}'.format(class_xref_from_name=class_xref_from_name, n=n))
            #G.add_edge(class_xref_from_name, n, attr_dict=xref_from_name) #if class_xref_from_n else None
        end = time.time()
        elapsed = end-start
        #print(' adding edges class xref_from took {}'.format(end-start))

        #class xref to(n -> ?)
        #print('edges class xref_to')
        start = time.time()
        for xref_to_name in G.node[n]['xref_to']:
            method_xref_to_name = xref_to_name['method']#unused
            class_xref_to_name = xref_to_name['class']
            class_xref_to_n = __map_lookup(n_to_class_name_map, class_xref_to_name)
            
            if not class_xref_to_n == n:
                # if duplicate_edge(G, n, class_xref_to_n, xref_to_name):
                #     print('duplicate class xref to')
                #     continue
                dedupe_start_time = time.time()
                if xref_to_name in edges:
                    continue
                dedupe_end_time = time.time()
                #print('dedupe time took {}'.format(dedupe_end_time - dedupe_start_time))
                total_class_xref_to+=1
                G.add_edge(n, class_xref_to_n, attr_dict=xref_to_name) if class_xref_to_n else None
#            G.add_edge(n, class_xref_to_name, attr_dict=xref_to_name) #if class_xref_to_n else None
        end = time.time()
        elapsed = end-start
        #print(' adding edges class xref_to took {}'.format(end-start))

        #print('edges methods xref_from')
        start = time.time()
        #method xref from (todo: check suspected overlap with above) (? -> n)
        for method in G.node[n]['methods']:
            for xref_from_name in method['xref_from']:
                method_xref_from_name = xref_from_name['method']
                class_xref_from_name = xref_from_name['class']
                class_xref_from_n = __map_lookup(n_to_class_name_map, class_xref_from_name)
                
                if not class_xref_from_n == n:
                    # if duplicate_edge(G, class_xref_from_n, n, xref_from_name):
                    #     print('duplicate method xref from')
                    #     continue
                    dedupe_start_time = time.time()
                    if xref_from_name in edges:
                        continue
                    dedupe_end_time = time.time()
                    #print('dedupe time took {}'.format(dedupe_end_time - dedupe_start_time))
                    total_method_xref_from += 1
                    G.add_edge(class_xref_from_n, n, attr_dict=xref_from_name) if class_xref_from_n else None
#                G.add_edge(class_xref_from_name, n, attr_dict=xref_from_name) #if class_xref_from_n else None
        end = time.time()
        elapsed = end-start
        #print(' adding edges method xref_from took {}'.format(end-start))


        #print('edges methods xref_to')
        start = time.time()
        #method xref to(n -> ?)
        for xref_to_name in G.node[n]['methods']:
            for xref_to_name in method['xref_to']:
                method_xref_to_name = xref_to_name['method']
                class_xref_to_name = xref_to_name['class']
                class_xref_to_n = __map_lookup(n_to_class_name_map, class_xref_to_name)
                
                if not class_xref_to_n == n:
                    # if duplicate_edge(G, n, class_xref_to_n, xref_to_name):
                    #     print('duplicate method xref to')
                    #     continue
                    dedupe_start_time = time.time()
                    if xref_to_name in edges:
                        continue

                    dedupe_end_time = time.time()
                    #print('dedupe time took {}'.format(dedupe_end_time - dedupe_start_time))
                    total_method_xref_to += 1
                    G.add_edge(n, class_xref_to_n, attr_dict=xref_to_name) if class_xref_to_n else None
                #G.add_edge(n, class_xref_to_name, attr_dict=xref_to_name) #if class_xref_to_n else None
        end = time.time()
        elapsed = end-start
        #print(' adding edges method xref_to took {}'.format(end-start))


        # print('edges fields xref_read')
        # start = time.time()
        # #field xref from (read) (? -> n)
        # for field in G.node[n]['fields']:
        #     for xref_read_name in field['xref_read']:
        #         field_xref_read_name = xref_read_name['method']
        #         class_xref_read_name = xref_read_name['class']
        #         class_xref_from_n = __map_lookup(n_to_class_name_map, class_xref_read_name)
                
        #         if not class_xref_from_n == n:
        #             # if duplicate_edge(G, class_xref_from_n, n, xref_read_name):
        #             #     print('duplicate field xref from')
        #             #     continue
        #             dedupe_start_time = time.time()
        #             if xref_read_name in edges:
        #                 continue
        #             dedupe_end_time = time.time()
        #             print('dedupe time took {}'.format(dedupe_end_time - dedupe_start_time))
        #             total_field_xref_read += 1
        #             G.add_edge(class_xref_from_n, n, attr_dict=xref_read_name) if class_xref_from_n else None
        #         #G.add_edge(class_xref_read_name, n, attr_dict=xref_read_name) #if class_xref_from_n else None
        # end = time.time()
        # elapsed = end-start
        # print(' adding edges fields xref_read took {}'.format(end-start))


        # print('edges fields xref_write')
        # start = time.time()
        # #field xref to (write) (n -> ?)
        # for field in G.node[n]['fields']:
        #     for xref_write_name in field['xref_write']:
        #         field_xref_write_name = xref_write_name['method']
        #         class_xref_write_name = xref_write_name['class']
        #         class_xref_write_n = __map_lookup(n_to_class_name_map, class_xref_write_name)
        #         # print(class_xref_write_n)
                
        #         if not class_xref_write_n == n:
        #             # if duplicate_edge(G, class_xref_write_n, n, xref_write_name):
        #             #     print('duplicate field xref to')
        #             #     continue
        #             dedupe_start_time = time.time()
        #             if xref_write_name in edges:
        #                 continue
        #             dedupe_end_time = time.time()
        #             print('dedupe time took {}'.format(dedupe_end_time - dedupe_start_time))
        #             total_field_xref_write += 1
        #             G.add_edge(class_xref_write_n, n, attr_dict=xref_write_name) if class_xref_write_n else None
        #         #G.add_edge(class_xref_write_name, n, attr_dict=xref_write_name) #if class_xref_write_n else None
        
        # end = time.time()
        # elapsed = end-start
        # print(' adding edges fields xref_write took {}'.format(end-start))

    # for u,v,d in G.edges(data=True):
    #     print(u)
    #     print(v)
    #     print(d)
    #     d['source'] = G.nodes()[d['source']]['id']
    #     d['target'] = G.nodes()[d['target']]['id']
    add_edges_end = time.time()
    print('done adding edges tmp_G took {}'.format(add_edges_end-add_edges_start))
    
    print('total_class_xref_from {}'.format(total_class_xref_from))
    print('total_class_ref_to {}'.format(total_class_xref_to))
    print('total_method_xref_from {}'.format(total_method_xref_from))
    print('total_method_xref_to {}'.format(total_method_xref_to))
    print('total_field_xref_read {}'.format(total_field_xref_read))
    print('total_field_xref_write {}'.format(total_field_xref_write))
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

def get_ego_graph(G, class_name, radius):
    """https://networkx.github.io/documentation/networkx-1.10/reference/generated/networkx.generators.ego.ego_graph.html"""
    n_to_class_name_map = build_n_to_class_name_map(G)
    n = __map_lookup(n_to_class_name_map, class_name)
    ego_G = nx.ego_graph(G, n, radius=radius)

    new_G = nx.MultiDiGraph()
    for idx, n in enumerate(ego_G.nodes()):
        new_G.add_node(idx, **G.node[n])
    new_G = add_edges(new_G)

    #new_G.add_nodes_from(ego_G.nodes(data=True))

    #new_G.add_edges_from( (u,v,w) for (u,v,w) in G.edges(data=True) if u in new_G if v in new_G )

    return new_G


def get_class_subgraph(G, class_names=[]):
    """Build a subgraph that has the nodes from class_names
        and re-add edges based on new subgraph
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
    with open('/home/branden/mercator/analysis/56a0093a3a6b55a47e3b1ee6051467e2/56a0093a3a6b55a47e3b1ee6051467e2_graph.json.tmp','r') as f:
        data = json.load(f)
    G = json_graph.node_link_graph(data)

    ego_G = get_ego_graph(G, 'Lru/andrey/notepad/MainActivity;', 2)
    write_graph(ego_G, '/home/branden/mercator/analysis/56a0093a3a6b55a47e3b1ee6051467e2/56a0093a3a6b55a47e3b1ee6051467e2_graph.json')
    # component_names = []
    # for node in G:
    #     node_tmp = G.node[node]
    #     if node_tmp['component_type']:
    #         component_names.append(node_tmp['name'])
    # subgraph = get_class_subgraph(G, 
    #                              class_names=component_names)
    # write_graph(subgraph, '/home/branden/Mercator/analysis/56a0093a3a6b55a47e3b1ee6051467e2.json.subgraph')
