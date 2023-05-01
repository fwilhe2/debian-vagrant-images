#!/bin/bash -x

make build-libvirt-testing-vagrant-amd64
make NAMESPACE=fwilhe IS_RELEASE=norelease upload-libvirt-testing-vagrant-amd64