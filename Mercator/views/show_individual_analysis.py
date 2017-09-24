import os
import json

from flask import render_template, jsonify, request
from networkx.readwrite import json_graph


from Mercator import app, analysis_dir
from Mercator.utils import graph

@app.route('/show_individual_analysis/<string:md5>', methods=['GET'])
def show_individual_analysis(md5):
    """Display Ego graph of the class 'class_name' with a radius of 'radius'
       i.e.: ?radius=n,?class=name
    
    """
    radius = int(request.args.get('radius'))
    class_name = request.args.get('class_name')

    safe_class_name = class_name.replace(';','')
    safe_class_name = safe_class_name.replace('/','-')


    md5_analysis_dir = os.path.join(analysis_dir, md5)
    d3_json = None

    cached_file = os.path.join(md5_analysis_dir, '{0}_{1}_ego.json'.format(safe_class_name,radius))
    #see if we have this analysis (class+radius) cached
    if os.path.isfile(cached_file):
        app.logger.info('found cached file to load')
        with open(cached_file, 'r') as f:
            d3_json = f.read()

    else:
        app.logger.info('creating cached file')
        full_graph_data = None
        app.logger.info('loading graph.json')
        with open(os.path.join(md5_analysis_dir, md5)+'_graph.json','r') as f:
            full_graph_data = json.load(f)#f.read()#json.load(f)
        app.logger.info('loading graph into networkx')
        full_nx_graph = json_graph.node_link_graph(full_graph_data)
        
        app.logger.info('loading ego graph')
        individual_graph = graph.get_ego_graph(full_nx_graph, class_name, radius)
        data = json_graph.node_link_data(individual_graph)
        d3_json = json.dumps(data)
        app.logger.info('caching ego graph')
        with open(os.path.join(md5_analysis_dir,cached_file), 'w+') as f:
            json.dump(data, f, indent=4, sort_keys=True)

        
    return render_template('show_analysis.html',d3_json=d3_json, md5=md5,radius=radius, class_name=class_name)
