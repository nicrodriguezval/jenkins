#!/bin/bash

NAME=$1
SHOW=${2:-false}

if [ $SHOW = true ]; then
  echo "Hello, $NAME."
else
  echo "The 'show' option is not enabled."
fi
