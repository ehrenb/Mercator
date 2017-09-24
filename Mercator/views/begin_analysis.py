

import hashlib
import os
import threading
from threading import Lock

from flask import render_template, redirect, request, make_response, url_for

from Mercator import app, analysis_dir, socketio
from Mercator.utils.Analysis import Analysis
from flask_socketio import disconnect, emit

a = None 


# OLD CODE FOR AJAX Analysis status requests
# @app.route('/analysis_progress', methods=['GET'])
# def analysis_progress():
#     if a:
#         app.logger.info(a.progress)
#         return str(a.progress)

thread = None
thread_lock = Lock()

@socketio.on('connect', namespace='/status')
def status_connect():
    app.logger.info('client connected')
    socketio.emit('my response', {'data': 'Connected'})

status_sleep = 0.25
def background_thread():
    global thread
    #while the analysis thread is still running
    while a.isAlive():

        #if paused event is set, analysis thread is waiting for us to gather the final update and reset the event so it can finish
        if a.paused.is_set():
            progress = a.progress
            status = a.status
            a.paused.clear()
        #else analysis event is still running, just gather new progress
        else:
            progress = a.progress
            status = a.status
        socketio.emit('newstatus',
                      {'percent': progress,
                       'status': status},
                      namespace='/status')
        socketio.sleep(status_sleep)
    thread = None

@app.route('/begin_analysis/<string:md5>', methods=['GET'])
def begin_analysis(md5):
    """Begin an analysis on the APK whose md5 == 'md5' if it is in the 'uploads' directory
        Also start a background thread which emits the analysis status frequently to the 'status' websocket namespace"""
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