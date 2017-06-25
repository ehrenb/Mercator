"""do Androguard things

Builds class_result dictionary, which contains class and method information and cross-references of code

"""

import logging

from androguard.core.analysis.analysis import ExternalClass

from Mercator.utils.ComponentType import ComponentType

logger = logging.getLogger('mercator')


def convert_to_dot_notation(class_name):
    """take a class name from ClassAnalysis and format it for comparison against typical dot package notation
        eg.  Lcm/aptoide/pt/v8engine/OpenGLES20Activity; --> cm.aptoide.pt.v8engine.OpenGLES20Activity
    """
    converted = class_name
    if converted[0] == 'L':
        converted = converted[1:]
    converted = converted.replace('/','.')
    if converted[-1] == ';':
        converted = converted[:-1]
    return converted

def fix_name(name):
    if '$' in name:
        return name.split('$')[0]+';'
    return name

class ClassAnalysis(object):
    def __init__(self, c, a, duplicate_edges=True):
        """c: class
           a: Androguard APK object
           duplicate_edges: Whether or not to record duplicate connections between classes
                            i.e. AddActivity and MainActivity can reach other via an update() fucntion 10 times
                            If duplicate_edges=True, then all 10 will be recorded"""
        self.c = c
        self.a = a
        self.duplicate_edges = duplicate_edges


    def run_analysis(self):
        """"Run full analysis on a given class
        """
        # if 'MyService' in self.c.name:
        #     print('%%%%%%%%%%%%%%%%%%%%%%%name before:')
        #     print(self.c.name)
        class_result = {'name': self.c.name,
                        'access_flags': self.c.get_access_flags_string(),
                        'source': None,
                        'xref_from': [], 
                        'xref_to': [],
                        'fields': [],
                        'methods': [],
                        'component_type': None}
                        #component_type is set to an enum IF the class is a core app component(activity,service,provider,receiver)
        
        converted = convert_to_dot_notation(class_result['name'])
        if converted in self.a.get_activities():
            class_result['component_type'] = ComponentType.ACTIVITY
        elif converted in self.a.get_receivers():
            class_result['component_type'] = ComponentType.RECEIVER
        elif converted in self.a.get_services():
            class_result['component_type'] = ComponentType.SERVICE
        elif converted in self.a.get_providers():
            class_result['component_type'] = ComponentType.PROVIDER
        # try:
        #     if self.c.source():
        #         class_result['source'] = self.c.get_source()
        # except TypeError as e:
        #     logger.info('Warning: could get source for class {class_name}\nException:\n\t{e}'.format(class_name=self.c.name,e=e))
        

        #logger.info(c.get_superclassname()) superclass name
        # if c.show():
        #     logger.info(c.show())

        c_a = self.c.CM.get_vmanalysis().get_class_analysis(self.c.name)
        if c_a:
            #xref from
            xrefs_from = c_a.get_xref_from()
            for ref_class in xrefs_from:
                ref_class_name = None
                if isinstance(ref_class.get_vm_class(), ExternalClass):
                    ref_class_name = ref_class.get_vm_class().name
                else:
                    ref_class_name = ref_class.get_vm_class().get_name()
                    
                if ref_class_name == self.c.get_name():
                    continue
                for ref_kind, ref_method, ref_offset in xrefs_from[ref_class]:
                    #logger.info(ref_method.get_class_name())
                    ref = {'class': ref_method.get_class_name(),#fix_name(ref_method.get_class_name()),
                           'method': ref_method.get_name()}#fix_name(ref_method.get_name())}
                    # class_result['xref_from'].append(ref_method.get_class_name())
                    if not self.duplicate_edges and ref in class_result['xref_from']:
                        continue
                    class_result['xref_from'].append(ref)

            xrefs_to = c_a.get_xref_to()
            for ref_class in xrefs_to:
                ref_class_name = None
                if isinstance(ref_class.get_vm_class(), ExternalClass):
                    ref_class_name = ref_class.get_vm_class().name
                else:
                    ref_class_name = ref_class.get_vm_class().get_name()

                if ref_class_name == self.c.get_name():
                    continue
                for ref_kind, ref_method, ref_offset in xrefs_to[ref_class]:
                    #logger.info(ref_method.get_class_name())
                    ref = {'class': ref_method.get_class_name(),#fix_name(ref_method.get_class_name()),
                           'method': ref_method.get_name()}#fix_name(ref_method.get_name())}
                    # class_result['xref_from'].append(ref_method.get_class_name())
                    if not self.duplicate_edges and ref in class_result['xref_to']:
                        continue
                    class_result['xref_to'].append(ref)

        #Fields (static variables?)
        for field in self.c.get_fields(): #EncodedFields objects
            class_field = {'name': field.get_name(),#fix_name(field.get_name()),
                           'access_flags': field.get_access_flags_string(),
                           'xref_read': [],
                           'xref_write': []}
            
            f_a = field.CM.get_vmanalysis().get_field_analysis(field)
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

        for method in self.c.get_methods():#EncodedMethods objects

            #"fix" param types and return type names, removing $ 
            info = []
            for k,v in method.get_information().items():
                if k == 'params':
                    new_v = []
                    for idx,param in enumerate(v):
                        param_type = param[1]
                        param_type = param_type#fix_name(param_type)
                        new_v.append((v[idx][0],param_type))
                    v = new_v
                if k == 'return':
                    return_type = v
                    return_type = return_type#fix_name(return_type)
                    v = return_type
                info.append({k:v})

            class_method = {'name': method.get_name(),#fix_name(method.get_name()),
                            'access_flags': method.get_access_flags_string(),
                            'xref_from': [],
                            'xref_to': [],
                            'info': info,
                            'source': None}
            # try:
            #     if method.source():
            #         class_method['source'] = method.get_source()
            # except TypeError as e:
            #     logger.info('Warning: could get source for class {m_name}\nException:\n\t{e}'.format(m_name=method.get_name(),e=e))

            m_a = method.CM.get_vmanalysis().get_method_analysis(method)
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


