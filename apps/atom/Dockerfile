FROM lburgazzoli/fedora-ui:26
MAINTAINER lburgazzoli

ARG APP_NAME
ARG APP_URL
ARG DOCKER_USER
ARG DOCKER_USER_GID
ARG DOCKER_USER_UID

ENV DOCKER_USER_HOME /home/$DOCKER_USER
ENV HOME             $DOCKER_USER_HOME

RUN \
    dnf --assumeyes install \
        libXScrnSaver \
        libXtst \
        libxkbfile \
        GConf2 \
        alsa-lib \
        alsa-utils \
        make \
        automake \
        gcc \
        gcc-c++ \
        git-core \
        git \
        gnupg \
        gnupg2 \
        findutils \
    && ln -s /usr/share/git-core/contrib/completion/git-prompt.sh /etc/profile.d \
    && mkdir /opt/${APP_NAME} \
    && curl -L ${APP_URL} \
        | tar -xzf - \
            --directory /opt/${APP_NAME} \
            --strip-components=1

ADD atom-run.sh /opt/atom/atom-run.sh
RUN chmod ugo+x /opt/atom/atom-run.sh

WORKDIR $DOCKER_USER_HOME
USER $DOCKER_USER

ENTRYPOINT [ "/opt/atom/atom-run.sh" ]

