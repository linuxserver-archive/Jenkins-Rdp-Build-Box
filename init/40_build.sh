#!/bin/bash

[[ -d /project ]] && rm -rf /project

mkdir -p /project

cd /tmp/guac_server && \
./configure && \
make && \
make DESTDIR=/project install

