#!/bin/bash

USER=$1
API_KEY=$2
JOB_NAME=$3

curl \
-u $USER:$API_KEY \
-X POST http://localhost:8080/job/$JOB_NAME/build?delay=0sec

# curl \
# -u $USER:$API_KEY \
# -X POST http://localhost:8080/job/$JOB_NAME/buildWithParameters?delay=0sec
# -d parm1=value1 \
# -d parm2=value2
