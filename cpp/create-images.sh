#!/bin/bash

docker build . -f Dockerfile.ubuntu  -t cppdev-ubuntu

docker build . -f Dockerfile.centos7 -t cppdev-centos7

docker build . -f Dockerfile.mariner -t cppdev-mariner

# Set default devcontainer image to ubuntu
docker tag cppdev-ubuntu cppdev
