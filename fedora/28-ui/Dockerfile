############################################################
# Fedora 28 UI
############################################################

FROM lburgazzoli/fedora:28
MAINTAINER lburgazzoli

ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME  /home/$DOCKER_USER
ENV HOME              $DOCKER_USER_HOME

RUN \
    dnf --assumeyes --verbose --allowerasing install \
        mesa-libGL \
        numix-gtk-theme \
        google-noto-serif-fonts \
        google-noto-mono-fonts \
        google-noto-sans-fonts \
    && dnf --assumeyes --verbose clean all
