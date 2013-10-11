#!/bin/bash

if ! [ -f diskimage-builder ]; then
    git clone https://github.com/openstack/diskimage-builder.git
fi
if ! [ -f tripleo-image-elements ]; then
    git clone https://github.com/openstack/tripleo-image-elements.git
fi
export ELEMENTS_PATH=tripleo-image-elements/elements:CI-elements
export DIB_RELEASE=precise
diskimage-builder/bin/disk-image-create vm ubuntu heat-cfntools CI-tools -a i386 -o ubuntu-heat-cfntools

