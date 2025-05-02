#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages





dnf -y update
dnf -y install wget
wget https://download1.rstudio.org/electron/rhel9/x86_64/rstudio-2024.12.1-563-x86_64.rpm

grep -v '^#' ./rstudio.packages | xargs dnf -y install
