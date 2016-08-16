#!/usr/bin/env bash


sudo docker build \
    --tag="lburgazzoli/app-franz" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_NAME=frranz \
    --build-arg APP_VERSION=3.1.1 \
    .
