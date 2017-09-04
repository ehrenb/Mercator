import json
import os
import time

from androguard.session import Session, Load
from androguard.misc import AnalyzeAPK, load_session
from flask import jsonify, request

from Mercator import app, analysis_dir, upload_dir, cached_analyses, socketio
from Mercator.utils.utils import get_all_classes_from_dexs

from flask_socketio import emit
"""For some reason, i cant use the instantiated SocketIO object to emit here..i need to import emit()"""

@socketio.on('connect', namespace='/code')
def code_connect():
    app.logger.info('client connected')
    emit('my response', {'data': 'Connected'})

@socketio.on('code_request', namespace='/code')
def respond_code_request(message):
    class_name = message['class_name']
    md5 = message['md5']
    app.logger.info(class_name)
    code = get_class_source(class_name, md5)
    #socketio.sleep(.5)
    emit('code_response', {'data': code})

def get_class_source(class_name, md5):
    """get source coe from of an apk's class whose md5=md5 """
    app.logger.info('resolving src for {}'.format(class_name))
    md5_analysis_dir = os.path.join(analysis_dir, md5)
    apk = os.path.join(md5_analysis_dir, md5+'.apk')
    
    #
    #a, d, dx = Load(session_save_file)
    #a, d, dx = AnalyzeAPK(apk, decompiler='dad',session=s)
    
    a = None
    d = None
    dx = None

    #Check if we have a cached a,d,dx for this analysis in memory
    for cached_analysis in cached_analyses:
        if md5 == cached_analysis['md5']:
            app.logger.info('found cached analysis..loading')
            a,d,dx = cached_analysis['analysis']
            break

    # else: load the session from a file, store it in cache
    if not a and not d and not dx:
        app.logger.info('nothing cached, loading session')
        analyze_start_time = time.time()
        session_save_file = os.path.join(md5_analysis_dir, md5+'_androguard.session')
        a, d, dx = load_session(session_save_file, binary=True)
        analyze_end_time = time.time()
        elapsed = analyze_end_time - analyze_start_time
        app.logger.info('Reloading Session took {} seconds'.format(elapsed))
        app.logger.info('caching analysis')
        cached_analyses.append({'md5':md5,
                                'analysis':(a,d,dx)})

    #gather all classes from dexs 'd'
    classes = get_all_classes_from_dexs(d)

    src_start_time = time.time()
    class_data_src = None
    #find the matching class' src based on name
    for c in classes:
        if c.name == class_name:
            class_data_src = c.get_source()
            break
        #class_data_src = d_class.get_class(class_name).get_source()


    src_end_time = time.time()
    elapsed = src_end_time - src_start_time
    app.logger.info('get_source took {} seconds'.format(elapsed))
    return class_data_src


# @app.route('/get_class_source/<string:md5>', methods=['GET'])
# def get_class_source(md5):
#     class_name = request.args.get('class_name')

#     app.logger.info('resolving src for {}'.format(class_name))
#     md5_analysis_dir = os.path.join(analysis_dir, md5)
#     apk = os.path.join(md5_analysis_dir, md5+'.apk')
    
#     #
#     #a, d, dx = Load(session_save_file)
#     #a, d, dx = AnalyzeAPK(apk, decompiler='dad',session=s)
    
#     a = None
#     d = None
#     dx = None

#     #Check if we have a cached a,d,dx for this analysis in memory
#     for cached_analysis in cached_analyses:
#         if md5 == cached_analysis['md5']:
#             app.logger.info('found cached analysis..loading')
#             a,d,dx = cached_analysis['analysis']
#             break

#     # else: load the session from a file, store it in cache
#     if not a and not d and not dx:
#         app.logger.info('nothing cached, loading session')
#         analyze_start_time = time.time()
#         session_save_file = os.path.join(md5_analysis_dir, md5+'_androguard.session')
#         a, d, dx = load_session(session_save_file, binary=True)
#         analyze_end_time = time.time()
#         elapsed = analyze_end_time - analyze_start_time
#         app.logger.info('Reloading Session took {} seconds'.format(elapsed))
#         app.logger.info('caching analysis')
#         cached_analyses.append({'md5':md5,
#                                 'analysis':(a,d,dx)})

#     #gather all classes from dexs 'd'
#     classes = get_all_classes_from_dexs(d)

#     src_start_time = time.time()
#     class_data_src = None
#     #find the matching class' src based on name
#     for c in classes:
#         if c.name == class_name:
#             class_data_src = c.get_source()
#             break
#         #class_data_src = d_class.get_class(class_name).get_source()


#     src_end_time = time.time()
#     elapsed = src_end_time - src_start_time
#     app.logger.info('get_source took {} seconds'.format(elapsed))

    #old way: store src in file and retrieve...slower initially
    #should this file be _graph.json ? _graph.json is passed to d3, so would increase client resource usage bc code takes up more
    #it is currently in _graph.json.beforenetworkxss
    # with open(os.path.join(md5_analysis_dir,md5+'_graph.json.beforenetworkx'), 'r') as f:
    #     #load in as little as possible..why is class highlighted?
    #     class_data_src = [c['source'] for c in json.load(f) if c['name'] == class_name]
        
    #return jsonify({'src':class_data_src})