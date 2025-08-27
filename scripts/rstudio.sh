#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages

dnf -y update
dnf -y install wget tar
wget https://download1.rstudio.org/electron/rhel9/x86_64/rstudio-2025.05.1-513-x86_64.rpm

grep -v '^#' ./rstudio.packages | xargs dnf -y install
dnf -y install rstudio-2025.05.1-513-x86_64.rpm
rm rstudio-2025.05.1-513-x86_64.rpm
wget -P /usr/share/themes https://github.com/lassekongo83/adw-gtk3/releases/download/v6.1/adw-gtk3v6.1.tar.xz
tar -xvf /usr/share/themes/adw-gtk3v6.1.tar.xz

