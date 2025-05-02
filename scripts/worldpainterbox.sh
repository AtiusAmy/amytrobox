#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages

apt update -y && apt upgrade -y
apt install wget tar -y
wget -P /tmp/ https://www.worldpainter.net/files/worldpainter_2.24.0.deb

apt install /tmp/worldpainter_2.24.0.deb -y
rm /tmp/worldpainter_2.24.0.deb
