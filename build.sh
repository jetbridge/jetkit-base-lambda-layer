#!/bin/bash -x

set -e

rm -rf layer
docker build -t layerbuild .
CONTAINER=$(docker run -d layerbuild false)
docker cp $CONTAINER:/opt build
docker rm $CONTAINER
touch build/.slsignore
cat > build/.slsignore << EOF
**/*.a
**/*.la
share/**
include/**
bin/**
EOF
