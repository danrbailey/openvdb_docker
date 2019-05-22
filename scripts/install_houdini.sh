#!/usr/bin/env bash

set -ex

HOUDINI_MAJOR="$1"

# install houdini pre-requisites
apt-get update
apt-get install -y libxi-dev
apt-get install -y csh
apt-get install -y default-jre
apt-get install -y python-mechanize
apt-get clean
rm -rf /var/lib/apt/lists/*

export PYTHONPATH=${PYTHONPATH}:/usr/lib/python2.7/dist-packages
# download and unpack latest houdini headers and libraries from daily-builds
python /tmp/install_houdini.py $HOUDINI_MAJOR

mv hou.tar.gz /opt/hou.tar.gz
cd /opt
tar -xzf hou.tar.gz
ln -s houdini* hou
cd hou
tar -xzf houdini.tar.gz
