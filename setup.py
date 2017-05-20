import sys
if sys.version_info < (3,3):
    sys.exit('Sorry, Python < 3.3 is not supported')

from setuptools import setup


setup(
    name='Mercator',
    version='0.1',
    author='Branden Ehrenreich',
    packages=['Mercator'],
    include_package_data=True,
    install_requires=['docopt==0.6.2',
                      'Flask==0.12.1',
                      'networkx',
                      'pymongo']
  )

#export FLASK_APP=Mercator
#export FLASK_DEBUG=true