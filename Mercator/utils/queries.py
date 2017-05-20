from pprint import pprint

import pymongo

client = pymongo.MongoClient('127.0.0.1',27017)
db = client.mercator
collection = db.d3_json

for document in collection.find({'md5':'56a0093a3a6b55a47e3b1ee6051467e2'}):
    for node in  document['d3_json']['links']:
        if node['source'] == 17 or node['target'] == 17:
            pprint(node)


# for document in collection.find({'md5':'56a0093a3a6b55a47e3b1ee6051467e2'}):
#     for node in  document['d3_json']['nodes']:
#         if '$' in node['name']:
#             print(True)
#             print(node['name'])
print('333')
for document in collection.find({'md5':'56a0093a3a6b55a47e3b1ee6051467e2'}):
    for node in  document['d3_json']['nodes']:
        if node['id'] == 11:
            for xref_to in node['xref_to']:
                if xref_to['class'] == 'Lru/andrey/notepad/UpdateService;':
                    pprint(node)