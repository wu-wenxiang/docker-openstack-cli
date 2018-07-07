FROM python:2-alpine

RUN apk add --no-cache linux-headers \
    build-base \
    libffi-dev \
    openssl-dev \
    && pip install python-openstackclient

ENTRYPOINT [ "openstack" ]