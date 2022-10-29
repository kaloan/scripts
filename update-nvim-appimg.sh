#!/bin/bash
cd /tmp
curl -sLO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage --appimage-extract > /dev/null

# Optional: exposing nvim globally.
sudo rm -rf /squashfs-root
sudo mv squashfs-root /
sudo rm /usr/bin/nvim
sudo ln -s /squashfs-root/AppRun /usr/bin/nvim

# Print new version number
nvim --version
