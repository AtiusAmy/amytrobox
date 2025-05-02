#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages

apt update -y && apt upgrade -y
apt install wget tar -y
wget -P /tmp/ https://www.worldpainter.net/files/worldpainter_2.23.2.deb

apt install /tmp/worldpainter_2.23.2.deb -y
rm /tmp/worldpainter_2.23.2.deb
wget -P /usr/share/themes https://github.com/lassekongo83/adw-gtk3/releases/download/v6.1/adw-gtk3v6.1.tar.xz
tar -xvf /usr/share/themes/adw-gtk3v6.1.tar.xz

