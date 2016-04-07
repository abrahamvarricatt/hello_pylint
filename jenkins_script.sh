#!/bin/bash

PYENV_HOME=$WORKSPACE/VENV/

# Delete previously built virtualenv
#if [ -d $PYENV_HOME ]; then
#    rm -rf $PYENV_HOME
#fi

# Create virtualenv and install necessary packages
virtualenv --no-site-packages $PYENV_HOME
. $PYENV_HOME/bin/activate
pip install -r requirements.txt


pylint --rcfile=pylintrc.ini hello_world.py > pylint_report.txt

py.test test_sample.py --junitxml=py_test.xml

