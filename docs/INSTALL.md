install guide:

git clone https://ehrenb@bitbucket.org/ehrenb/mercator.git
virtualenv mercator -p python3
source mercator/bin/activate
cd mercator/libs/androguard
python setup.py install
cd ../../
pip install -e .