#!/bin/bash

DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_SECRET=$4
AWS_BUCKET_NAME=$5

DATE=$(date '+%Y-%m-%dT%T.%3N')
FILENAME=backup-$DATE.sql

mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$FILENAME && \
export AWS_ACCESS_KEY_ID=AKIAZZFRCVUQ5FIJCSFZ && \
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET && \
export AWS_DEFAULT_REGION=us-west-1 && \
aws s3 cp /tmp/$FILENAME s3://$AWS_BUCKET_NAME/
