#!/bin/bash
source /opt/rh/python27/enable
YARN_CONF_DIR=/etc/hadoop/conf/
pyspark  --master yarn-client --num-executors 3 --executor-memory 1g
