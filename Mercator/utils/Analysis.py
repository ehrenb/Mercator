import json
from math import ceil
import sys
import threading
import queue

from androguard.session import Session
from androguard.misc import AnalyzeAPK
from networkx.readwrite import json_graph

from Mercator.utils.ClassAnalysis import ClassAnalysis, fix_name
from Mercator.utils.graph import create_graph, write_graph, get_class_subgraph

class Analysis(threading.Thread):
    def __init__(self, target_file, md5, apk_metadata_out_path,graph_out_path,component_subgraph_out_path=None):
        self.progress = 0
        self.graph_result = []
        self.target_file = target_file
        self.md5 = md5
        self.graph_out_path = graph_out_path
        self.apk_metadata_out_path = apk_metadata_out_path
        self.component_subgraph_out_path= component_subgraph_out_path
        super().__init__()

    def write_app_metadata(self, result_classes ,a):
        with open(self.apk_metadata_out_path,'w') as f:
            data = {'md5':self.md5,
                    'package':a.get_package(),
                    'main_activity': a.get_main_activity(),
                    'classes': []}
            for r in result_classes:
                #skip dupe class names
                if r['name'] in [c['name'] for c in data['classes']]:
                    continue
                class_data = {'name': r['name'],
                              'component_type': r['component_type']}
                data['classes'].append(class_data)
            json.dump(data, f, indent=4, separators=(',',': '),sort_keys=True)


    def run(self):
        a, d, dx = AnalyzeAPK(self.target_file, decompiler='dad', session=Session())
        total_num = 0#total number of classes

        classes = []
        if type(d) == list:
            for __d in d:#all dex
                __d_classes = __d.get_classes()
                total_num += len(__d_classes)
                classes.extend(__d_classes)
        else:
            d_classes = d.get_classes()
            total_num = len(d_classes)
            classes = d_classes

        done = 0#num of done classes
        result_classes = []
        for c in classes:
            ca = ClassAnalysis(c, a)
            ca_result = ca.run_analysis()
            result_classes.append(ca_result)
            done+=1
            if done % ceil(total_num/100) == 0:
                self.progress+=1

        #write graphs
        #d3 json
        #FULL
        # count = 0
        # for r in result_classes:
        #     if r['name'] == 'Lcom/connect/CameraView;':
        #         count+=1
        # print('Lcom/connect/CameraView; Dupe couNT 2 ====== {count}'.format(count=count))
        # sys.exit()

        graph = create_graph(classes=result_classes)
        write_graph(graph, self.graph_out_path)

        if self.component_subgraph_out_path:
            component_names = []
            for node in graph:
                node_tmp = graph.node[node]
                if node_tmp['component_type']:
                    component_names.append(node_tmp['name'])
            subgraph = get_class_subgraph(graph, class_names=component_names)
            write_graph(subgraph, self.component_subgraph_out_path)

        #app metadata for misc.
        self.write_app_metadata(result_classes, a)


        # self.graph_result = json_graph.node_link_data(graph)
        # with open(self.out_path,'w') as f:
        #     json.dump(self.graph_result, f, indent=4, separators=(',',': '),sort_keys=True)
        self.progress = 100#test

