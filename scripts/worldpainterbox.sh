#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages

apt update -y && apt upgrade -y
apt install wget tar -y
wget https://www.worldpainter.net/files/worldpainter_2.23.2.deb

apt install worldpainter_2.23.2.deb -y
rm worldpainter_2.23.2.deb
wget -P /usr/share/theme https://github.com/lassekongo83/adw-gtk3/releases/download/v6.1/adw-gtk3v6.1.tar.xz
tar -xvf /usr/share/theme/adw-gtk3v6.1.tar.xz

