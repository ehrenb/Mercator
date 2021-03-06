

import json
from math import ceil
import os
import sys
import time
import threading

from androguard.session import Session, Save
from androguard.misc import AnalyzeAPK
from networkx.readwrite import json_graph

from Mercator.utils.ClassAnalysis import ClassAnalysis
from Mercator.utils.ComponentType import ComponentType, NonComponentType
from Mercator.utils.graph import create_graph, write_graph, get_class_subgraph

from Mercator import cached_analyses,socketio, app
from Mercator.utils.utils import get_all_classes_from_dexs
from flask_socketio import emit


class Analysis(threading.Thread):
    """[Analyzes all classes in an APK, and outputs the data as a networkx graph]
    
    [description]
    
    Extends:
        threading.Thread
    """
    def __init__(self, 
                 target_file,
                 md5,
                 apk_metadata_out_path,
                 graph_out_path,
                 component_subgraph_out_path=None,
                 session_save_file=None):
        """[summary]
        
        [description]
        
        Arguments:
            target_file {[string]} -- [path to target apk to analyze]
            md5 {[string]} -- [md5sum of the apk]
            apk_metadata_out_path {[string]} -- [path where apk metadata will be written to]
            graph_out_path {[string]} -- [path where networkx graph will be written to]
        
        Keyword Arguments:
            component_subgraph_out_path {[string]} -- [optional path where subgraph containing only components will be written to] (default: {None})
        """
        self.progress = 0
        self.graph_result = []
        self.target_file = target_file
        self.md5 = md5
        self.graph_out_path = graph_out_path
        self.apk_metadata_out_path = apk_metadata_out_path
        self.component_subgraph_out_path= component_subgraph_out_path
        self.session_save_file = session_save_file
        self.status = ''
        self.main_activity = None
        self.paused = threading.Event()
        app.logger.info(socketio.async_mode)
        super().__init__()

    def write_app_metadata(self, 
                           result_classes,
                           a,
                           analysis_total_time,
                           apk_size,
                           create_graph_total_time,
                           write_graph_total_time):
        with open(self.apk_metadata_out_path,'w') as f:
            data = {'md5':self.md5,
                    'package':a.get_package(),
                    'main_activity': self.main_activity,
                    'classes': [],
                    'num_classes': len(result_classes),
                    'analysis_total_time': analysis_total_time,
                    'apk_size': apk_size,
                    'create_graph_total_time': create_graph_total_time,
                    'write_graph_total_time': write_graph_total_time}

            for r in result_classes:
                #skip dupe class names
                if r['name'] in [c['name'] for c in data['classes']]:
                    continue
                class_data = {'name': r['name'],
                              'component_type': r['component_type']}
                data['classes'].append(class_data)
            json.dump(data, f, indent=4, separators=(',',': '),sort_keys=True)

    def run(self):
        app.logger.info('new analysis')
        s = Session()
        self.status = 'Analyzing APK'
        a, d, dx = AnalyzeAPK(self.target_file, session=s)#APK,list[DalvikVMFormat],Analysis
        print(type(a), type(d[0]), type(dx))
        #cache activities, receivers, services, and providers, because for some reason, saving the Session causes a bug, breaking getters
        """i.e. bytecodes/apk.py", line 582, in get_elements
                for item in self.xml[i].findall('.//' + tag_name):
            TypeError: string indices must be integers """
        activities = a.get_activities()
        receivers = a.get_receivers()
        services = a.get_services()
        providers = a.get_providers()
        self.main_activity = a.get_main_activity()
        if self.session_save_file:
            sys.setrecursionlimit(100000000)
            self.status = 'Saving session file'
            Save(s, self.session_save_file)

        cached_analyses.append({'md5': self.md5,
                                'analysis': (a,d,dx)})
        
        #gather all classes from dexs 'd'
        #classes = get_all_classes_from_dexs(d)
        classes = dx.classes
        total_num = len(classes)
        done = 0#num of done classes
        #result_classes contains the completed analysis info for each class run through the ClassAnalysis object
        result_classes = []
        analysis_start_time = time.time()
        


        self.status = 'Getting all classes'
        for c_name, c_analysis in classes.items():
            ca = ClassAnalysis(c_name, c_analysis, activities, receivers, services, providers)
            ca_result = ca.run()
            result_classes.append(ca_result)
            done+=1
            if done % ceil(total_num/100) == 0:
                self.progress+=1
                #app.logger.info(self.progress)
                # with app.test_request_context('/'):
                #     socketio.emit('newstatus', {'data':self.progress}, namespace='/status')
        analysis_end_time = time.time()
        analysis_total_time = analysis_end_time - analysis_start_time

        #debugging:
        self.status = 'Writing beforenetworkx debugging JSON'
        with open(self.graph_out_path+'.beforenetworkx', 'w') as f:
            json.dump(result_classes, f, indent=4, separators=(',',': '),sort_keys=True)

        #create a networkx graph given the completed analyses in result_classess
        create_graph_start_time = time.time()
        self.status = 'Creating graph out of {} classes analyzed'.format(len(result_classes))
        graph = create_graph(classes=result_classes)
        create_graph_end_time = time.time()
        create_graph_total_time = create_graph_end_time - create_graph_start_time

        #write graph to file: graph_out_path
        write_graph_start_time = time.time()
        self.status = 'Writing graph to disk'
        write_graph(graph, self.graph_out_path)
        write_graph_end_time = time.time()
        write_graph_total_time = write_graph_end_time - write_graph_start_time

        #build and write another graph that contains only providers,receivers,activities, and services
        if self.component_subgraph_out_path:
            component_names = []
            self.status = 'Getting component nodes from graph'
            for node in graph:
                node_tmp = graph.node[node]
                if node_tmp['component_type'] != NonComponentType.EXTERNAL and node_tmp['component_type'] != NonComponentType.INTERNAL:
                    component_names.append(node_tmp['name'])
            self.status = 'Creating subgraph containing only components'
            subgraph = get_class_subgraph(graph, class_names=component_names)
            self.status = 'Writing subgraph to disk'
            write_graph(subgraph, self.component_subgraph_out_path)

        #app metadata for misc/debugging
        apk_size = os.path.getsize(self.target_file)
        self.status = 'Writing metadata'
        self.write_app_metadata(result_classes, a, analysis_total_time, apk_size, create_graph_total_time, write_graph_total_time)
        #debugging
        # with open(self.graph_out_path+'.runmetrics', 'w') as f:
        #     json.dump()

        self.progress = 100
        self.status = 'Done'
        self.paused.wait()#wait for caller to collect last status and reset event before finishing

        app.logger.info('done')

