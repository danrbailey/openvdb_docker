#!/usr/bin/env bash

set -ex

# install houdini pre-requisites
apt-get update
apt-get install -y libxi-dev
apt-get install -y csh
apt-get install -y default-jre
apt-get install -y python-mechanize
apt-get clean
rm -rf /var/lib/apt/lists/*
