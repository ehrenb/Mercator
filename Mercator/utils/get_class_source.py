import json
import os
import time

from androguard.session import Session, Load
from androguard.misc import AnalyzeAPK#, load_session
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
    """socket handler for code request, expects args 'class_name' and 'md5' """
    class_name = message['class_name']
    md5 = message['md5']
    app.logger.info(class_name)
    code = get_class_source(class_name, md5)
    emit('code_response', {'data': code})

def get_class_source(class_name, md5):
    """get source code from of an apk's class 'class_name' whose md5 == 'md5' """
    app.logger.info('resolving src for {}'.format(class_name))
    md5_analysis_dir = os.path.join(analysis_dir, md5)
    apk = os.path.join(md5_analysis_dir, md5+'.apk')
    
    #
    #a, d, dx = Load(session_save_file)
    #a, d, dx = AnalyzeAPK(apk, decompiler='dad',session=s)
    
    a = None
    d = None
    dx = None

    #Check if we have a cached a,d,dx Androguard session object for this analysis in memory
    for cached_analysis in cached_analyses:
        if md5 == cached_analysis['md5']:
            app.logger.info('found cached analysis..loading')
            a,d,dx = cached_analysis['analysis']
            break

    # else: load the Androguard session from a file, store it in cache memory
    if not a and not d and not dx:
        app.logger.info('nothing cached, loading session')
        analyze_start_time = time.time()
        session_save_file = os.path.join(md5_analysis_dir, md5+'_androguard.session')
        #a, d, dx = load_session(session_save_file, binary=True)
        s =  Load(session_save_file)
        a = next (iter (s.analyzed_apk.values()))[0]
        #print(a)
        #d, dx = next (iter (s.analyzed_dex.values()))
        d = [tmp_d for tmp_d in s.analyzed_dex.values()]
        app.logger.info(len(s.analyzed_vms.values()))
        dx = list(s.analyzed_vms.values())[0]
        app.logger.info(a)
        app.logger.info(d)
        app.logger.info(dx)
        analyze_end_time = time.time()
        elapsed = analyze_end_time - analyze_start_time
        app.logger.info('Reloading Session took {} seconds'.format(elapsed))
        app.logger.info('caching analysis')
        cached_analyses.append({'md5':md5,
                                'analysis':(a,d,dx)})

    #gather all classes from dexs 'd'
    classes = dx.classes#get_all_classes_from_dexs(d)

    src_start_time = time.time()
    class_data_src = None
    #find the matching class' src based on name
    for c_name, c_analysis in classes.items():
        if c_name == class_name:
            if c_analysis.external:
                class_data_src = 'EXTERNAL'
            else:
                class_data_src = c_analysis.orig_class.get_source()
            break

    src_end_time = time.time()
    elapsed = src_end_time - src_start_time
    app.logger.info('get_source took {} seconds'.format(elapsed))
    return class_data_src

