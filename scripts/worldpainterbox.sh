#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages

apt update -y && apt upgrade -y
apt install wget tar -y
wget -P /tmp/ https://www.worldpainter.net/files/worldpainter_2.24.0.deb

apt install /tmp/worldpainter_2.24.0.deb -y
rm /tmp/worldpainter_2.24.0.deb
curl -s https://julianfairfax.codeberg.page/package-repo/pub.gpg | gpg --dearmor | dd of=/usr/share/keyrings/julians-package-repo.gpg

echo 'deb [ signed-by=/usr/share/keyrings/julians-package-repo.gpg ] https://julianfairfax.codeberg.page/package-repo/debs packages main' | tee /etc/apt/sources.list.d/julians-package-repo.list
apt update -y && apt install adw-gtk3 -y

