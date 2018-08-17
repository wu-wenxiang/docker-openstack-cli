FROM python:2-alpine

RUN apk add --no-cache linux-headers \
    build-base \
    libffi-dev \
    openssl-dev \
    && pip install --upgrade pip \
    && pip install python-openstackclient \
    && pip install python-designateclient \
    && pip install python-heatclient

ENTRYPOINT [ "openstack" ]