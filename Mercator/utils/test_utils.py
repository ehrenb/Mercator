from pprint import pprint

from androguard.session import Session
from androguard.misc import AnalyzeAPK



a, d, dx = AnalyzeAPK('test_apks/instagram.apk', decompiler='dex2jad', session=Session())
print('here')
acts = a.get_activities()
print('here2')
print(acts)