import os
import json

from flask import render_template, jsonify, request

from Mercator import app, analysis_dir

@app.route('/show_component_analysis/<string:md5>', methods=['GET'])
def show_component_analysis(md5):   
    md5_analysis_dir = os.path.join(analysis_dir, md5)
    with open(os.path.join(md5_analysis_dir, md5)+'_component_graph.json','r') as f:
        d3_json = f.read()#json.load(f)
    return render_template('show_analysis.html',d3_json=d3_json)
    #return render_template('show_analysis.html',md5=md5,graph_type=graph_type)