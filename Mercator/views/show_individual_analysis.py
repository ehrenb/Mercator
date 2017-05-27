import os
import json

from flask import render_template, jsonify, request
from networkx.readwrite import json_graph


from Mercator import app, analysis_dir
from Mercator.utils import graph

@app.route('/show_component_analysis/<string:md5>', methods=['GET'])
def show_component_analysis(md5):
    """?radius=n,?class=name"""
    radius = int(request.args.get('radius'))
    class_name = request.args.get('class_name')

    md5_analysis_dir = os.path.join(analysis_dir, md5)
    full_graph_data = None
    with open(os.path.join(md5_analysis_dir, md5)+'_graph.json','r') as f:
        full_graph_data = json.load(f)#f.read()#json.load(f)
    full_nx_graph = json_graph.node_link_graph(full_graph_data)
    

    individual_graph = graph.get_ego_graph(full_nx_graph, class_name, radius)

    return render_template('show_analysis.html',d3_json=d3_json)
    #return render_template('show_analysis.html',md5=md5,graph_type=graph_type)