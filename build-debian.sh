#!/bin/bash
set -e -x

sudo apt-get install build-essential devscripts fakeroot
sudo apt-get build-dep bindfs

# Get packing dir from debian
rm -rf debian
apt-get source bindfs
mv bindfs-1.*/debian ./
rm -rf bindfs-1.*

sed -i -e 's/^Package: bindfs$/Package: bindfs-filter\nProvides: bindfs/' debian/control
echo | dch --newversion "$(git describe --tags HEAD)" 'dev build'
dpkg-buildpackage -us -uc -b
