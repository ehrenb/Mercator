import hashlib
import os
import queue
import threading

from flask import render_template, redirect, request, make_response, url_for

from Mercator import app, analysis_dir
from Mercator.utils.Analysis import Analysis

a = None 

@app.route('/analysis_progress', methods=['GET'])
def analysis_progress():
    if a:
        app.logger.info(a.progress)
        # if a.progress == 100:
        #     app.logger.info('redirecting to show_analysis')
        #     return render_template('show_analysis.html', d3_json=a.out_file)
        return str(a.progress)

@app.route('/begin_analysis/<string:md5>', methods=['GET'])
def begin_analysis(md5):
    global a
    progress = 0
    target_file = ''
    expected_dir = os.path.join(analysis_dir, md5)
    for f in os.listdir(expected_dir):
        if md5 == os.path.splitext(f)[0]:
            f_full_path = os.path.join(expected_dir, f)
            existing_md5 = hashlib.md5(open(f_full_path,'rb').read()).hexdigest()
            if md5 == existing_md5:
                target_file = f_full_path
                break

    if not target_file:
        error = 'There is no record of this file being uploaded'
        app.logger.error(error)
        return render_template('error.html', error=error)

    # = threading.Thread(target=analyze, args=(target_file,q))
    #t.start()

    md5_analysis_dir = os.path.join(analysis_dir, md5)
    graph_out_path = os.path.join(md5_analysis_dir,md5+'_graph.json')
    component_subgraph_out_path = os.path.join(md5_analysis_dir, md5+'_component_graph.json')
    apk_metadata_out_path = os.path.join(md5_analysis_dir, md5+'_metadata.json')
    a = Analysis(target_file, md5, apk_metadata_out_path, graph_out_path, component_subgraph_out_path=component_subgraph_out_path)
    a.start()
    return render_template('begin_analysis.html', md5=md5)
    # while True:
    #     item = q.get()
    #     if type(item) == list:
    #         break
    #     progress = item
    #     app.logger.info('progress: {progress}'.format(progress=item))

    # classes = item
    # app.logger.info('analysis done {n} classes'.format(n=len(classes)))
    # app.logger.info('creating graph')
    # d3_json = create_graph(classes=classes)
    # app.logger.info('graph created')
    #return render_template('show_analysis.html', d3_json=d3_json)


    #begin work...