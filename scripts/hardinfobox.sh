#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
echo "@testing https://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
apk update && apk upgrade
grep -v '^#' ./hardinfobox.packages | xargs apk add
