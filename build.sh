#!/bin/bash -x

set -e

rm -rf build
docker build -t layerbuild .
CONTAINER=$(docker run -d layerbuild false)
docker cp $CONTAINER:/var/task build
docker rm $CONTAINER
