import json
import os

from flask import render_template, request

from Mercator import app, analysis_dir, graph_types


@app.route('/get_d3_json/<string:md5>')
def get_d3_json(md5):
    d3_json = None
    graph_type = request.args.get('type', None)

    if not graph_type:
        error = "missing 'type' GET parameter"
        app.logger.error(error)
        return d3_json#render_template('error.html', error=error)

    if graph_type not in graph_types:
        error = "'type' value must one of the following: {graph_types}".format(graph_types=graph_types)
        app.logger.error(error)
        return d3_json#render_template('error.html', error=error)

    md5_analysis_dir = os.path.join(analysis_dir, md5)
    with open(os.path.join(md5_analysis_dir, md5)+'_{type}.json'.format(type=graph_type),'r') as f:
        d3_json = f.read()#json.load(f)
    return d3_json#json.dumps(d3_json)
    #return jsonify(d3_json)
