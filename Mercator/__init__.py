import configparser
import os

from flask import Flask, request, redirect, url_for
from werkzeug.utils import secure_filename

#UPLOAD_FOLDER = 'uploads'
ALLOWED_EXTENSIONS = set(['apk'])

config = configparser.ConfigParser()
config.read('conf.ini')

# MONGO_HOST = config['mongo']['host']
# MONGO_PORT = int(config['mongo']['port'])
analysis_dir = config['analysis']['root_dir']
upload_dir = config['uploads']['root_dir']

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = upload_dir

dirs_to_make = [analysis_dir, upload_dir]
graph_types = ['graph', 'component_graph']

for directory in dirs_to_make:
    if not os.path.isdir(directory):
        os.mkdir(directory)

from Mercator.views import begin_analysis,\
                           get_metadata_json,\
                           show_all_analyses,\
                           show_component_analysis,\
                           show_full_analysis,\
                           show_individual_analysis,\
                           index,\
                           upload,\
                           view_results