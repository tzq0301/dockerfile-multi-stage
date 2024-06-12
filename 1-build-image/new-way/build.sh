#!/usr/bin/env bash

set -euo pipefail

IMAGE=build-image
TAG=new-way

docker build -t $IMAGE:$TAG "$PWD" -q

docker images | grep $IMAGE | grep $TAG
