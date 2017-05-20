import json

from flask import render_template, jsonify

from Mercator import app 

@app.route('/show_full_analysis/<string:md5>', methods=['GET'])
def show_full_analysis(md5):
    #d3_json = reqest.get_json()
    return render_template('show_analysis.html',md5=md5)