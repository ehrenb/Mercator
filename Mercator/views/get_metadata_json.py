import json
import os

from flask import jsonify

from Mercator import app, analysis_dir

@app.route('/metadata_json/<string:md5>')
def get_metadata_json(md5):
    """return the apk's metadata json"""
    metadata_json = None
    md5_analysis_dir = os.path.join(analysis_dir, md5)
    with open(os.path.join(md5_analysis_dir, md5)+'_metadata.json','r') as f:
        metadata_json = json.load(f)
    return jsonify(metadata_json)
