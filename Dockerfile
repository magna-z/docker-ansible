FROM python:3.12.10-alpine3.21

ENV ANSIBLE_VERSION 11.5.0

RUN set -ex \
    && apk add --no-cache git openssh-client rsync \
    && mkdir -p ~/.ssh && printf "Host *\n StrictHostKeyChecking no\n" > ~/.ssh/config \
    && pip3 --disable-pip-version-check --no-color --no-cache-dir install ansible==${ANSIBLE_VERSION}
