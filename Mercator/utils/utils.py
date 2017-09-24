from math import ceil
import threading
import queue

from androguard.session import Session
from androguard.misc import AnalyzeAPK

from Mercator.utils.ClassAnalysis import ClassAnalysis


def get_all_classes_from_dexs(d):
    classes = []
    if type(d) == list:
        for __d in d:#all dex
            __d_classes = __d.get_classes()
            classes.extend(__d_classes)
    else:
        d_classes = d.get_classes()
        classes = d_classes
    return classes

# def analyze(apk_file, q):
#     a, d, dx = AnalyzeAPK(apk_file, decompiler='dad', session=Session())
#     result = []

#     total_num = 0#total number of classes
#     for __d in d:#all dex
#         total_num += len(__d.get_classes())

#     progress = 0#percentage progress
#     done = 0#num of done classes
#     for __d in d:#all dex
#         for c in __d.get_classes():
#             ca = ClassAnalysis(c, a)
#             ca_result = ca.run_analysis()
#             result.append(ca_result)
#             done+=1
#             if done % ceil(total_num/100) == 0:
#                 progress+=1
#                 q.put(progress)
#     q.put(result)


# def _test_analyze(apk_path):
#     q =  queue.Queue()
#     t = threading.Thread(target=analyze, args=(apk_path,q))
#     t.start()
#     while True:
#         item = q.get()
#         if type(item) == list:
#             break
#         print('progress: {progress}'.format(progress=item))

#     return item

# if __name__ == '__main__':
#     #print(convert_to_dot_notation("Lcm/aptoide/pt/v8engine/OpenGLES20Activity;"))  
#     _test_analyze('test_apks/instagram.apk')