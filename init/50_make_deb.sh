#!/bin/bash

rm -rf /builds/* || true

cd /builds || exit

fpm -s dir -t deb -n guacamole-server -v "$GUAC_VERSION" -C /project .

chown -R abc:abc /builds
