#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages

dnf -y update
dnf -y install wget epel-release
dnf config-manager --set-enabled crb
wget https://download1.rstudio.org/electron/rhel9/x86_64/rstudio-2026.01.0-392-x86_64.rpm

grep -v '^#' ./rstudio.packages | xargs dnf -y install
dnf -y install rstudio-2026.01.0-392-x86_64.rpm
rm rstudio-2026.01.0-392-x86_64.rpm
dnf -y install https://rpmfind.net/linux/fedora/linux/updates/41/Everything/x86_64/Packages/a/adw-gtk3-theme-5.6-1.fc41.noarch.rpm

