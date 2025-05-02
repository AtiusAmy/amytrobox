#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages


dnf5 -y config-manager --add-repo https://repo.secureblue.dev/secureblue.repo
dnf5 -y update

grep -v '^#' ./kritabox.packages | xargs apk add
