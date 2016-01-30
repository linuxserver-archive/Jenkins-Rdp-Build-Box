#!/bin/bash

rm -rf /builds/* || true

cd /builds || exit

fpm -s dir -t deb -n guacamole-server -v "$guac_version" -C /project .

chown -R abc:abc /builds
