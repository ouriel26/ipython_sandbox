#!/bin/bash
source /opt/rh/python27/enable
YARN_CONF_DIR=/etc/hadoop/conf/
PYSPARK_PYTHON=/opt/rh/python27/root/usr/bin/python2.7
PYTHONPATH=/opt/rh/python27/root/usr/lib64/
IPYTHON=1
IPYTHON_OPTS="notebook  --ip='*' --port=80" pyspark  --master yarn-client --num-executors 4 
