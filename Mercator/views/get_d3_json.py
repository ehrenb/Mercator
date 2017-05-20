import json
import os

from Mercator import app, analysis_dir

@app.route('/get_d3_json/<string:md5>')
def get_d3_json(md5):
    d3_json = None
    md5_analysis_dir = os.path.join(analysis_dir, md5)
    with open(os.path.join(md5_analysis_dir, md5)+'_graph.json','r') as f:
        d3_json = f.read()#json.load(f)
    return d3_json#json.dumps(d3_json)
    #return jsonify(d3_json)
