import json
import os

from androguard.session import Session
from androguard.misc import AnalyzeAPK
from flask import jsonify, request

from Mercator import app, analysis_dir, upload_dir

"""TODO: figure out how to store code"""

@app.route('/get_class_source/<string:md5>', methods=['GET'])
def get_class_source(md5):
    class_name = request.args.get('class_name')

    md5_analysis_dir = os.path.join(analysis_dir, md5)
    #apk = os.path.join(md5_analysis_dir, md5+'.apk')
    #a, d, dx = AnalyzeAPK(apk, decompiler='dad',session=Session())
    class_data_src = None
    #should this file be _graph.json ? _graph.json is passed to d3, so would increase client resource usage bc code takes up more
    #it is currently in _graph.json.beforenetworkxss
    with open(os.path.join(md5_analysis_dir,md5+'_graph.json.beforenetworkx'), 'r') as f:
        #load in as little as possible..why is class highlighted?
        class_data_src = [c['source'] for c in json.load(f) if c['name'] == class_name]
        
    #src = d.get_class(class_name).get_source()
    #print(src)
    #app.logger.info('here')
    return jsonify({'src':class_data_src})