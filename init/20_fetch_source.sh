#!/bin/bash

[[ -d /tmp/guac_server ]] && rm -rf /tmp/guac_server

curl -o /tmp/guac_source.tar.gz -L http://sourceforge.net/projects/guacamole/files/current/source/guacamole-server-${guac_version}.tar.gz/download
mkdir -p /tmp/guac_server
tar xf /tmp/guac_source.tar.gz -C /tmp/guac_server --strip-components=1


