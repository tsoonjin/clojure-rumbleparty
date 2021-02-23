#!/usr/bin/env bash
# Bash3 Boilerplate. Copyright (c) 2014, kvz.io

set -o errexit
set -o pipefail
set -o nounset

export LOCAL_PORT=8000
export APP_PORT=5000
export APP_NAME=rumbleparty

lein uberjar &&

docker build --progress=plain \
    --build-arg APP_NAME=$APP_NAME \
    --build-arg APP_PORT=$APP_PORT \
    -t $APP_NAME . &&

docker run -p $LOCAL_PORT:$APP_PORT $APP_NAME
