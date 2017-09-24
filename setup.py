import sys
if sys.version_info < (3,3):
    sys.exit('Sorry, Python < 3.3 is not supported')
import os 
from setuptools import setup
from setuptools.command.install import install

import subprocess


setup(
    name='Mercator',
    version='0.1',
    author='Branden Ehrenreich',
    packages=['Mercator'],
    install_requires=['flask',
                      'networkx',
                      'eventlet',
                      'flask-socketio',
                      ],
    setup_requires=['setuptools'],


  )