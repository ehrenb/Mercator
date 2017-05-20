"""Mercator.

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

import json
import logging
import os
import sys
import time

from docopt import docopt
from androguard.session import Session
from androguard.core.analysis.analysis import ExternalClass
from androguard.misc import AnalyzeAPK

if __name__ == '__main__':
    arguments = docopt(__doc__, version='0.0.1rc')
    print(arguments)

    path = arguments['APK_PATH']
    output_file_path = arguments['-o']

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

    if not os.path.isfile(path):
        logger.info('{path} is not a valid file'.format(path=path))
        sys.exit()

    if not output_file_path:
        output_file_path = os.path.splitext(os.path.basename(path))[0] + '.json'
        logger.info('output file defaulting to: {path}'.format(path=output_file_path))
    start = time.time()
    a, d, dx = AnalyzeAPK(path, session=Session())
    end = time.time()
    logger.info('androguard time: {t}'.format(t=(end-start)))

    #a = <class 'androguard.core.bytecodes.apk.APK'>
    #d = list <class 'androguard.core.bytecodes.dvm.DalvikVMFormat'> a list of DalvikVMFormat objects, each pertaining to a single classes.dex
    #dx = list <class 'androguard.core.analysis.analysis.Analysis'>  A list of Analyses objects, each pertaining to a single classes.dex

    logger.info(len(d))
    logger.info(len(dx))
    
    start = time.time()
    result = []
    for __d in d:#all dex
        print(len(__d.get_classes()))
        continue
        for c in __d.get_classes():
            class_result = {'name': c.name,
                            'access_flags': c.get_access_flags_string(),
                            'source': None,
                            'xref_from': [], 
                            'xref_to': [],
                            'fields': [],
                            'methods': []}
            try:
                if c.source():
                    class_result['source'] = c.source()
            except TypeError as e:
                logger.info('Warning: could get source for class {class_name}\nException:\n\t{e}'.format(class_name=c.name,e=e))
            #logger.info(c.get_superclassname()) superclass name
            # if c.show():
            #     logger.info(c.show())

            c_a = c.CM.get_vmanalysis().get_class_analysis(c.name)
            if c_a:
                #xref from
                xrefs_from = c_a.get_xref_from()
                for ref_class in xrefs_from:
                    ref_class_name = None
                    if isinstance(ref_class.get_vm_class(), ExternalClass):
                        ref_class_name = ref_class.get_vm_class().name
                    else:
                        ref_class_name = ref_class.get_vm_class().get_name()
                        
                    if ref_class_name == c.get_name():
                        continue
                    for ref_kind, ref_method, ref_offset in xrefs_from[ref_class]:
                        #logger.info(ref_method.get_class_name())
                        class_result['xref_from'].append(ref_method.get_class_name())

                xrefs_to = c_a.get_xref_to()
                for ref_class in xrefs_to:
                    ref_class_name = None
                    if isinstance(ref_class.get_vm_class(), ExternalClass):
                        ref_class_name = ref_class.get_vm_class().name
                    else:
                        ref_class_name = ref_class.get_vm_class().get_name()

                    if ref_class_name == c.get_name():
                        continue
                    for ref_kind, ref_method, ref_offset in xrefs_to[ref_class]:
                        #logger.info(ref_method.get_class_name())
                        class_result['xref_to'].append(ref_method.get_class_name())

            #Fields (static variables?)
            for field in c.get_fields(): #EncodedFields objects
                #logger.info(field.get_name())#variable names
                #logger.info(field.get_access_flags_string())
                class_field = {'name': field.get_name(),
                               'access_flags': field.get_access_flags_string(),
                               'xref_read': [],
                               'xref_write': []}
                
                # if field.get_init_value():
                #    logger.info(str(field.get_init_value().get_value_type()))
                f_a = field.CM.get_vmanalysis().get_field_analysis(field)
                if f_a:
                    xrefs_read = f_a.get_xref_read()
                    for ref_class, ref_method in xrefs_read:
                        #logger.info(ref_method.get_class_name())
                        class_field['xref_read'].append(ref_method.get_class_name())

                    xrefs_write = f_a.get_xref_write()
                    for ref_class, ref_method in xrefs_write:
                        #logger.info(ref_method.get_class_name())
                        class_field['xref_write'].append(ref_method.get_class_name())

                class_result['fields'].append(class_field)

            for method in c.get_methods():#EncodedMethods objects

                class_method = {'name': method.get_name(),
                                'access_flags': method.get_access_flags_string(),
                                'xref_from': [],
                                'xref_to': [],
                                'info': method.get_information() if method.get_information() else None,
                                'source': None}
                #logger.info(method.get_name())
                #logger.info(method.get_access_flags_string())
                #logger.info(method.get_locals())#?
                #params?, return?, source

                try:
                    if method.source():
                        class_method['source'] = method.source()
                except TypeError as e:
                    logger.info('Warning: could get source for class {m_name}\nException:\n\t{e}'.format(m_name=method.get_name(),e=e))

                m_a = method.CM.get_vmanalysis().get_method_analysis(method)
                if m_a:
                    xrefs_from = m_a.get_xref_from()
                    for ref_class, ref_method, _ in xrefs_from:
                        #logger.info(ref_method.get_name())
                        class_method['xref_from'].append(ref_method.get_name())

                    xrefs_to = m_a.get_xref_to()
                    for ref_class, ref_method, _ in xrefs_to:
                        #logger.info(ref_method.get_name())
                        class_method['xref_to'].append(ref_method.get_name())
                # logger.info(method.get_information())
                # logger.info(method.source())
                class_result['methods'].append(class_method)
            result.append(class_result)
    end = time.time()
    logger.info('json build time: {t}'.format(t=(end-start)))

    start = time.time()
    with open(output_file_path,'w') as f:
        json.dump(result, f, separators=(',',': '),sort_keys=True)
    end = time.time()
    logger.info('json dump time: {t}'.format(t=(end-start)))
    # for __dx in dx:
    #     for c, c_analysis in __dx.classes.items():
    #         logger.info(c)
    #         for method in c_analysis.get_methods():
    #             logger.info(type(method))
    #             logger.info(type(method.method))
    #             logger.info(type(method.method.code))
    #             logger.info(method.method.name)
