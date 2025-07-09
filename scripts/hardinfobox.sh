#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
pacman -Syu
grep -v '^#' ./hardinfobox.packages | xargs pacman -Syu --noconfirm --needed
