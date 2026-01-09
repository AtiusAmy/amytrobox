#!/bin/sh

# Symlink distrobox shims
./distrobox-shims.sh

# Update the container and install packages
curl -s https://julianfairfax.codeberg.page/package-repo/pub.gpg | gpg --dearmor | sudo dd of=/usr/share/keyrings/julians-package-repo.gpg

echo 'deb [ signed-by=/usr/share/keyrings/julians-package-repo.gpg ] https://julianfairfax.codeberg.page/package-repo/debs packages main' | sudo tee /etc/apt/sources.list.d/julians-package-repo.list

apt update -y && apt upgrade -y
apt install wget tar adw-gtk3 -y
wget -P /tmp/ https://www.worldpainter.net/files/worldpainter_2.26.1.deb

apt install /tmp/worldpainter_2.26.1.deb -y
rm /tmp/worldpainter_2.26.1.deb
