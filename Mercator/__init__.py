
import configparser
import os
import sys


from flask import Flask, request, redirect, url_for
from werkzeug.utils import secure_filename
from flask_socketio import SocketIO, emit


app = Flask(__name__)
socketio = SocketIO(app, engineio_logger=True)




ALLOWED_EXTENSIONS = set(['apk'])

config = configparser.ConfigParser()
config.read('conf.ini')

# MONGO_HOST = config['mongo']['host']
# MONGO_PORT = int(config['mongo']['port'])
analysis_dir = config['analysis']['root_dir']
upload_dir = config['uploads']['root_dir']

app.config['UPLOAD_FOLDER'] = upload_dir

dirs_to_make = [analysis_dir, upload_dir]
graph_types = ['graph', 'component_graph']

for directory in dirs_to_make:
    if not os.path.isdir(directory):
        os.mkdir(directory)


cached_analyses = []#[{}]


app.logger.info(socketio.async_mode)

from Mercator.views import begin_analysis,\
                           get_metadata_json,\
                           purge_cached_analyses, \
                           show_all_analyses,\
                           show_component_analysis,\
                           show_full_analysis,\
                           show_individual_analysis,\
                           index,\
                           upload,\
                           view_results,\
                           show_test_code
from Mercator.utils.get_class_source import respond_code_request, code_connect
