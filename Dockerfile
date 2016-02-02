FROM linuxserver/baseimage

MAINTAINER Sparklyballs <sparklyballs@linuxserver.io>

ENV GUAC_VERSION="0.9.9"
ENV APTLIST="build-essential libfreerdp-dev libpango1.0-dev libvncserver-dev libcairo2-dev \
libjpeg-turbo8-dev libpng12-dev libpulse-dev libossp-uuid-dev libvorbis-dev ruby-dev"

# set some environment variables
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8

# Set the locale
RUN locale-gen en_US.UTF-8

# install packages
RUN apt-get update -q && \
apt-get install $APTLIST -qy && \
gem install fpm && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# add local files
ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/my_init.d/*.sh

VOLUME /builds

