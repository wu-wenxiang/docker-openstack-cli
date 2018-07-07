# haxorof/openstack-cli

[![Docker Pulls](https://img.shields.io/docker/pulls/haxorof/openstack-cli.svg)](https://hub.docker.com/r/haxorof/openstack-cli/)
[![Docker Build Status](https://img.shields.io/docker/build/haxorof/openstack-cli.svg)](https://hub.docker.com/r/haxorof/openstack-cli/)

## How to use this image

Simplest way of using this image is to just run with the arguments you want. Example below will show the help of `openstack` command:

```console
docker run -it --rm haxorof/openstack-cli help
```

To use OpenStack configuration file that is located on the host system you mount it into the container. Example below list all servers
using the `test` cloud configuration defined in `${HOME}/.config/openstack/clouds.yaml`:

```console
docker run -it --rm -v ${HOME}/.config/openstack:/etc/openstack haxorof/openstack-cli --os-cloud test server list
```