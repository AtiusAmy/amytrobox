#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
pacman -Syu
grep -v '^#' ./blenderbox.packages | xargs pacman -Syu
