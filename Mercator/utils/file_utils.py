import json
from pprint import pprint

json_file = '/home/branden/Mercator/analysis/02e231f85558f37da6802142440736f6/02e231f85558f37da6802142440736f6_graph.json'
out_file = '/home/branden/Mercator/Mercator/utils/test.json'
def get_class_node(class_name):
    with open(json_file, 'r') as f:
        classes = json.load(f)['nodes']
    for c in classes:
        if c['attr_dict']['name'] == class_name:
            return c

with open(out_file, 'w+') as f:
    json.dump(get_class_node('Lkrep/itmtd/ywtjexf/UampleUverlayUhowUctivity;'), f, sort_keys = True, indent = 4,)