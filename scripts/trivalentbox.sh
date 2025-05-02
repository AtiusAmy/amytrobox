#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages




dnf5 -y config-manager addrepo --from-repofile=https://repo.secureblue.dev/secureblue.repo
dnf5 -y update

grep -v '^#' ./trivalentbox.packages | xargs dnf5 -y install
