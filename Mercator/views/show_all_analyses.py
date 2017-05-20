import os
from flask import render_template

from Mercator import app, analysis_dir


@app.route('/show_all_analyses', methods=['GET'])
def show_all_analyses():
    #d3_json = reqest.get_json()
    md5s = [os.path.splitext(p)[0] for p in os.listdir(analysis_dir)]
    return render_template('show_all_analyses.html',md5s=md5s)