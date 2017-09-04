

import hashlib
import os
import queue
import threading
from threading import Lock

from flask import render_template, redirect, request, make_response, url_for

from Mercator import app, analysis_dir, socketio
from Mercator.utils.Analysis import Analysis
from flask_socketio import disconnect, emit

a = None 

@app.route('/analysis_progress', methods=['GET'])
def analysis_progress():
    if a:
        app.logger.info(a.progress)
        # if a.progress == 100:
        #     app.logger.info('redirecting to show_analysis')
        #     return render_template('show_analysis.html', d3_json=a.out_file)
        return str(a.progress)

thread = None
thread_lock = Lock()

@socketio.on('connect', namespace='/status')
def status_connect():
    app.logger.info('client connected')
    socketio.emit('my response', {'data': 'Connected'})


def background_thread():
    global thread
    while a.isAlive():
        if a.paused.is_set():
            progress = a.progress
            status = a.status
            a.paused.clear()
        else:
            progress = a.progress
            status = a.status
        socketio.emit('newstatus',
                      {'percent': progress,
                       'status': status},
                      namespace='/status')
        socketio.sleep(.25)
    thread = None

@app.route('/begin_analysis/<string:md5>', methods=['GET'])
def begin_analysis(md5):
    global a
    #socketio.emit('newstatus', {'data':'initializing...'}, namespace='/status')

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
    session_save_file = os.path.join(md5_analysis_dir, md5+'_androguard.session')
    a = Analysis(target_file,
                 md5, 
                 apk_metadata_out_path, 
                 graph_out_path, 
                 component_subgraph_out_path=component_subgraph_out_path,
                 session_save_file=session_save_file)
    a.start()

    global thread
    with thread_lock:
        if thread is None:
            thread = socketio.start_background_task(target=background_thread)

    app.logger.info('right after.start')
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