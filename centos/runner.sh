#!/bin/bash

# from https://nelkinda.com/blog/xeyes-in-docker/

# grant read access to current host user's .Xauthority file to user 1000
setfacl -m user:1000:r ${HOME}/.Xauthority

# build image from Dockerfile
docker build -t my-xeyes .

# run the image in a container
exec docker run \
    -it \
    --rm \
    --name xeyes \
    --net=host \
    -e DISPLAY \
    -v ${HOME}/.Xauthority:/home/user/.Xauthority \
    my-xeyes \
    "$@"
