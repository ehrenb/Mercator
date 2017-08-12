import os
import json

from flask import render_template, jsonify, request
from networkx.readwrite import json_graph


from Mercator import app, analysis_dir
from Mercator.utils import graph

@app.route('/show_individual_analysis/<string:md5>', methods=['GET'])
def show_individual_analysis(md5):
    """?radius=n,?class=name"""
    radius = int(request.args.get('radius'))
    class_name = request.args.get('class_name')

    md5_analysis_dir = os.path.join(analysis_dir, md5)
    full_graph_data = None
    with open(os.path.join(md5_analysis_dir, md5)+'_graph.json','r') as f:
        full_graph_data = json.load(f)#f.read()#json.load(f)
    full_nx_graph = json_graph.node_link_graph(full_graph_data)
    

    individual_graph = graph.get_ego_graph(full_nx_graph, class_name, radius)
    data = json_graph.node_link_data(individual_graph)
    d3_json = json.dumps(data)

    #debugging
    safe_class_name = class_name.replace(';','')
    safe_class_name = safe_class_name.replace('/','-')
    with open(os.path.join(md5_analysis_dir,'_{class_name}_{radius}_ego.json'.format(class_name=safe_class_name, radius=radius)), 'w+') as f:
        json.dump(data, f, indent=4, sort_keys=True)

        
    return render_template('show_analysis.html',d3_json=d3_json, md5=md5,radius=radius, class_name=class_name)
    #return render_template('show_analysis.html',md5=md5,graph_type=graph_type)