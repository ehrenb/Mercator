import json

from flask import render_template, jsonify, request

from Mercator import app, graph_types

@app.route('/show_full_analysis/<string:md5>', methods=['GET'])
def show_full_analysis(md5):
    graph_type = request.args.get('type', None)

    if not graph_type:
        error = "missing 'type' GET parameter"
        app.logger.error(error)
        return render_template('error.html', error=error)

    if graph_type not in graph_types:
        error = "'type' value must one of the following: {graph_types}".format(graph_types=graph_types)
        app.logger.error(error)
        return render_template('error.html', error=error)

    return render_template('show_analysis.html',md5=md5,graph_type=graph_type)