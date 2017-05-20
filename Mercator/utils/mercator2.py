"""Mercator (Python 3) command line tool.

Usage:
  mercator.py APK_PATH [-o OUT_FILE]

  mercator.py (-h | --help)
  mercator.py (--version)

Arguments:
  APK_PATH the path of the APK you want to operate on
  OUT_FILE the path of the output graph file

Options:
  -o OUT_FILE       the path of the output graph file
"""

"""androguard from master for multidex support"""

import hashlib
import json
import logging
import os
import sys
import time


from docopt import docopt
from androguard.session import Session
from androguard.misc import AnalyzeAPK

from Analysis import Analysis
from graph import create_graph

kill = False
result = []

#set up new logger
logger = logging.getLogger('mercator')
logger.setLevel(logging.DEBUG)
# create file handler which logs even debug messages
fh = logging.FileHandler('mercator.log')
fh.setLevel(logging.DEBUG)
# create console handler with a higher log level
ch = logging.StreamHandler()
ch.setLevel(logging.ERROR)
# create formatter and add it to the handlers
formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
fh.setFormatter(formatter)
ch.setFormatter(formatter)
# add the handlers to the logger
logger.addHandler(fh)
logger.addHandler(ch)

if __name__ == '__main__':
    arguments = docopt(__doc__, version='0.0.1rc')
    print(arguments)
    #global q

    path = arguments['APK_PATH']
    output_file_path = arguments['-o']

    if not os.path.isfile(path):
        logger.info('{path} is not a valid file'.format(path=path))
        sys.exit()

    if not output_file_path:
        output_file_path = os.path.splitext(os.path.basename(path))[0] + '.json'
        logger.info('output file defaulting to: {path}'.format(path=output_file_path))
    #a = <class 'androguard.core.bytecodes.apk.APK'>
    #d = list <class 'androguard.core.bytecodes.dvm.DalvikVMFormat'> a list of DalvikVMFormat objects, each pertaining to a single classes.dex
    #dx = list <class 'androguard.core.analysis.analysis.Analysis'>  A list of Analyses objects, each pertaining to a single classes.dex
    start = time.time()


    md5 = hashlib.md5(open(path,'rb').read()).hexdigest()
    a = Analysis(path, md5, output_file_path)
    progress = a.progress
    a.start()

    logger.info('running analysis...')
    while progress != 100:
        progress = a.progress
        time.sleep(.1)

    #graph_result = a.graph_result
    end = time.time()
    logger.info('elapsed time: {t}'.format(t=(end-start)))

    # start = time.time()
    # logger.info('writing json to {output_file_path}'.format(output_file_path=output_file_path))
    # with open(output_file_path, 'w') as f:
    #     json.dump(graph_result, f, indent=4, separators=(',',': '),sort_keys=True)
    

    # end = time.time()
    # logger.info('elapsed graph write time: {t}'.format(t=(end-start)))
