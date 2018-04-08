"""do Androguard things

Builds class_result dictionary, which contains class and method information and 
cross-references of code

"""

import logging
from pprint import pprint
import sys
#from multiprocessing import Process, Queue
from androguard.core.analysis.analysis import ExternalClass, ExternalMethod

from Mercator.utils.ComponentType import ComponentType

logger = logging.getLogger('mercator')


def convert_to_dot_notation(class_name):
    """take a class name from ClassAnalysis and format it for comparison against typical dot package notation
        eg.  Lcm/aptoide/pt/v8engine/OpenGLES20Activity; --> cm.aptoide.pt.v8engine.OpenGLES20Activity
        Note: I think this is necesssary because the get_activities/services/providers/receivers function
            return the 'dot notation' format of a component, whereas the decompile class names are like Lcm/atpoide/..etself.c.

    """
    converted = class_name
    if converted[0] == 'L':
        converted = converted[1:]
    converted = converted.replace('/','.')
    if converted[-1] == ';':
        converted = converted[:-1]
    return converted


#UNUSED
# def fix_name(name):
#     if '$' in name:
#         return name.split('$')[0]+';'
#     return name

class ClassAnalysis():
    def __init__(self, c_name,
                  c_analysis,
                  activities, 
                  receivers, 
                  services, 
                  providers, 
                  duplicate_edges=True):
        """c: class
           a: Androguard APK object
           duplicate_edges: Whether or not to record duplicate connections between classes
                            i.e. AddActivity and MainActivity can reach other via an update() function 10 times
                            If duplicate_edges=True, then all 10 will be recorded"""
        #c = c
        #self.a = a
        self.c_name = c_name
        self.c_analysis = c_analysis
        self.activities = activities
        self.receivers = receivers
        self.services = services
        self.providers = providers
        #self.c = c
        self.duplicate_edges = duplicate_edges

    def run(self):
        """"Run full analysis on class c"""
        if self.c_analysis.is_external():
            access_flags = 'EXTERNAL'
        else:
            access_flags = self.c_analysis.orig_class.get_access_flags_string()
        class_result = {'name': self.c_name,#the classes name
                        'access_flags': access_flags, #the access flags for the class (public, final, etself.c.)
                        'source': None, #the source of the class (excluding for now)
                        'xref_from': [], #the classes that this class references
                        'xref_to': [], #the classes that reference this class
                        'fields': [], #the static fields of the class
                        'methods': [], #methods of the class, also containing xrefs from/to
                        'component_type': None}#None if native class, otherwise, provider/receiver/activity/service
        converted = convert_to_dot_notation(class_result['name'])
        print(converted)
        #print(self.a.get_activities())
        if converted in self.activities:
            class_result['component_type'] = ComponentType.ACTIVITY
        elif converted in self.receivers:
            class_result['component_type'] = ComponentType.RECEIVER
        elif converted in self.services:
            class_result['component_type'] = ComponentType.SERVICE
        elif converted in self.providers:
            class_result['component_type'] = ComponentType.PROVIDER

        # src = self.c.get_source()
        # try:
        #     #if self.c.source():
        #     if src:
        #         #class_result['source'] = self.c.get_source()
        #         class_result['source'] = src
        # except TypeError as e:
        #     logger.info('Warning: could get source for class {class_name}\nException:\n\t{e}'.format(class_name=self.c.name,e=e))
        

        #logger.info(self.c.get_superclassname()) superclass name
        # if self.c.show():
        #     logger.info(self.c.show())

        if self.c_analysis:
            #xref from
            xrefs_from = self.c_analysis.get_xref_from()
            for ref_class in xrefs_from:
                ref_class_name = None
                if isinstance(ref_class.get_vm_class(), ExternalClass):
                    ref_class_name = ref_class.get_vm_class().name
                else:
                    ref_class_name = ref_class.get_vm_class().get_name()
                    
                #ignore class references to self
                if ref_class_name == self.c_name:#self.c.get_name():
                    continue

                #record the class and method for this xref_from
                for ref_kind, ref_method, ref_offset in xrefs_from[ref_class]:
                    #logger.info(ref_method.get_class_name())
                    ref = {'class': ref_method.get_class_name(),#fix_name(ref_method.get_class_name()),
                           'method': ref_method.get_name()}#fix_name(ref_method.get_name())}
                    # class_result['xref_from'].append(ref_method.get_class_name())
                    if not self.duplicate_edges and ref in class_result['xref_from']:
                        continue
                    class_result['xref_from'].append(ref)

            xrefs_to = self.c_analysis.get_xref_to()
            for ref_class in xrefs_to:
                ref_class_name = None
                if isinstance(ref_class.get_vm_class(), ExternalClass):
                    ref_class_name = ref_class.get_vm_class().name
                else:
                    ref_class_name = ref_class.get_vm_class().get_name()

                if ref_class_name == self.c_name:#self.c.get_name():
                    continue
                for ref_kind, ref_method, ref_offset in xrefs_to[ref_class]:
                    #logger.info(ref_method.get_class_name())
                    ref = {'class': ref_method.get_class_name(),#fix_name(ref_method.get_class_name()),
                           'method': ref_method.get_name()}#fix_name(ref_method.get_name())}
                    # class_result['xref_from'].append(ref_method.get_class_name())
                    if not self.duplicate_edges and ref in class_result['xref_to']:
                        continue
                    class_result['xref_to'].append(ref)

        #Fields (statics)
        for f_a in self.c_analysis.get_fields(): #EncodedFields objects
            field = f_a.get_field() #dvm.EncodedField
            has_init_value = True if field.get_init_value() else False
            class_field = {'name': field.get_name(),#fix_name(field.get_name()),
                           'access_flags': field.get_access_flags_string(),
                           "class_name": field.get_class_name(),
                           "init_value_type": field.get_init_value().get_value_type() if has_init_value else None,
                           "init_value_arg": field.get_init_value().get_value_arg() if has_init_value else None,
                           "init_value": field.get_init_value().get_value() if has_init_value else None,
                           'xref_read': [],
                           'xref_write': []}
            
            if f_a:
                xrefs_read = f_a.get_xref_read()
                for ref_class, ref_method in xrefs_read:
                    ref_class_name = None
                    if isinstance(ref_class.get_vm_class(), ExternalClass):
                        ref_class_name = ref_class.get_vm_class().name
                    else:
                        ref_class_name = ref_class.get_vm_class().get_name()

                    ref = {'class': ref_class_name,#fix_name(ref_class_name),
                           'method': ref_method.get_name()}#fix_name(ref_method.get_name())}
                    if not self.duplicate_edges and  ref in class_field['xref_read']:
                        continue
                    class_field['xref_read'].append(ref)

                xrefs_write = f_a.get_xref_write()
                for ref_class, ref_method in xrefs_write:
                    ref_class_name = None
                    if isinstance(ref_class.get_vm_class(), ExternalClass):
                        ref_class_name = ref_class.get_vm_class().name
                    else:
                        ref_class_name = ref_class.get_vm_class().get_name()

                    ref = {'class': ref_class_name,#fix_name(ref_class_name),
                           'method': ref_method.get_name()}#fix_name(ref_method.get_name())}
                    if not self.duplicate_edges and  ref in class_field['xref_write']:
                        continue
                    class_field['xref_write'].append(ref)#ref_class_name+''ref_method.get_class_name())

            class_result['fields'].append(class_field)

        for m_a in self.c_analysis.get_methods():#EncodedMethods objects
            method = m_a.get_method()#dvm.EncodedMethod
            info = []
            access_flags = 'EXTERNAL'
            if not isinstance(method, ExternalMethod):
                # for k,v in method.get_information().items():
                #     """get_information returns e.g.:
                #     {'params': [(3, 'java.lang.Object'), (4, 'java.lang.StringBuilder')],
                #      'registers': (0, 2),
                #      'return': 'void'}"""
                #     pprint(method.get_information())
                #     sys.exit()
                #     if k == 'params':
                #         new_v = []
                #         for idx,param in enumerate(v):
                #             param_type = param[1]
                #             param_type = param_type
                #             new_v.append((v[idx][0],param_type))
                #         v = new_v
                #     if k == 'return':
                #         return_type = v
                #         return_type = return_type#fix_name(return_type)
                #         v = return_type

                #     info.append({k:v})
                info.append(method.get_information())
                access_flags = method.get_access_flags_string()

            class_method = {'name': method.get_name(),#fix_name(method.get_name()),
                            'access_flags': access_flags,
                            'xref_from': [],
                            'xref_to': [],
                            'info': info,
                            'source': None}
            # try:
            #     if method.source():
            #         class_method['source'] = method.get_source()
            # except TypeError as e:
            #     logger.info('Warning: could get source for class {m_name}\nException:\n\t{e}'.format(m_name=method.get_name(),e=e))

            if m_a:
                xrefs_from = m_a.get_xref_from()
                for ref_class, ref_method, _ in xrefs_from:
                    ref_class_name = None
                    if isinstance(ref_class.get_vm_class(), ExternalClass):
                        ref_class_name = ref_class.get_vm_class().name
                    else:
                        ref_class_name = ref_class.get_vm_class().get_name()

                    ref = {'class': ref_class_name,#fix_name(ref_class_name),
                           'method': ref_method.get_name()}#fix_name(ref_method.get_name())}
                    if not self.duplicate_edges and  ref in class_method['xref_from']:
                        continue
                    class_method['xref_from'].append(ref)

                xrefs_to = m_a.get_xref_to()
                for ref_class, ref_method, _ in xrefs_to:
                    ref_class_name = None
                    if isinstance(ref_class.get_vm_class(), ExternalClass):
                        ref_class_name = ref_class.get_vm_class().name
                    else:
                        ref_class_name = ref_class.get_vm_class().get_name()

                    ref = {'class': ref_class_name,#fix_name(ref_class_name),
                           'method': ref_method.get_name()}#fix_name(ref_method.get_name())}
                    if not self.duplicate_edges and  ref in class_method['xref_to']:
                        continue
                    class_method['xref_to'].append(ref)

            class_result['methods'].append(class_method)
        return class_result

