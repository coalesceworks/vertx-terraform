#!/usr/bin/env bash

sudo su
wget -P /tmp https://bintray.com/artifact/download/vertx/downloads/vert.x-3.4.2-full.tar.gz
tar -xzf /tmp/vert.x-3.4.2-full.tar.gz -C /opt/
export PATH=$PATH:/opt/vertx/bin
echo $PATH
vertx -version