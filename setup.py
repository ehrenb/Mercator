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
    install_requires=['Flask',
                      'networkx',
                      'eventlet',
                      'flask-socketio',
                      'androguard',
                      'matplotlib'
                      ],
    setup_requires=['setuptools'],
  #  dependency_links=[
  #    'git+https://github.com/androguard/androguard.git#egg=androguard-v3.1.0-pre.2',
  #  ]

  )
"""
https://github.com/androguard/androguard/tree/v3.1.0-pre.2
  install_requires=[
      'private_package_name==1.1',
  ],
  dependency_links=[
      'git+ssh://git@github.com/username/private_repo.git#egg=private_package_name-1.1',
  ]
"""
