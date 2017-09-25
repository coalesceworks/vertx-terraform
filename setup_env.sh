#!/usr/bin/env bash

sudo su
export PATH=$PATH:/opt/vertx/bin
echo $PATH
vertx -version
