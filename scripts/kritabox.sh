#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
dnf update
grep -v '^#' ./kritabox.packages | xargs dnf install -y
