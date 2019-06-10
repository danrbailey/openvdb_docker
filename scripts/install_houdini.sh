#!/usr/bin/env bash

set -ex

HOUDINI_MAJOR="$1"

export PYTHONPATH=${PYTHONPATH}:/usr/lib/python2.7/dist-packages
# download and unpack latest houdini headers and libraries from daily-builds
python /tmp/install_houdini.py $HOUDINI_MAJOR

mv hou.tar.gz /opt/hou.tar.gz
cd /opt
tar -xzf hou.tar.gz
ln -s houdini-${HOUDINI_MAJOR}* hou${HOUDINI_MAJOR}
cd hou${HOUDINI_MAJOR}

# unpack
tar -xzf houdini.tar.gz

# delete data that is not needed
rm -rf /opt/hou${HOUDINI_MAJOR}/*.tar.gz
rm -rf /opt/hou${HOUDINI_MAJOR}/houdini
rm -rf /opt/hou${HOUDINI_MAJOR}/qt
rm -rf /opt/hou${HOUDINI_MAJOR}/lib
rm -rf /opt/hou${HOUDINI_MAJOR}/bin

# delete original tarball
rm -rf /opt/hou.tar.gz
