#!/usr/bin/env bash

docker build \
    --tag="lburgazzoli/app-bitlbee" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .
