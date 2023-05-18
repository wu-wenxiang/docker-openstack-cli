FROM python:3.11.3-alpine

LABEL org.opencontainers.image.title="caas4/openstack-cli" \
    org.opencontainers.image.description="OpenStackClient (aka OSC)"

COPY requirements.txt .

RUN apk add --no-cache linux-headers \
    build-base \
    libffi-dev \
    openssl-dev \
    cargo \
    && python3 -m pip install --no-cache-dir --upgrade pip \
    && python3 -m pip install --no-cache-dir -r requirements.txt \
    && rm -rf /var/cache/apk/* \
    && rm -rf /root/.cache

ENTRYPOINT [ "openstack" ]
