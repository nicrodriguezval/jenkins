#!/bin/bash

USER=$1
API_KEY=$2
JOB_NAME=$3

curl \
-u $USER:$API_KEY \
-X POST http://localhost:8080/job/$JOB_NAME/build?delay=0sec
