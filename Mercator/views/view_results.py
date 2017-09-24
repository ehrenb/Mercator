import json

from flask import render_template, json

from Mercator import app 
from Mercator.views.get_metadata_json import get_metadata_json

@app.route('/view_results/<string:md5>', methods=['GET'])
def view_results(md5):
    """ Display metadata json data from the APK analysis and act as the "jump off point" for the analysis """
    metadata_json = json.loads(get_metadata_json(md5).data)
    return render_template('view_results.html',md5=md5,app_metadata=metadata_json)