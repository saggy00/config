#!/bin/bash

git clone https://aur.archlinux.org/ttf-ms-win10.git

cp *.ttf *.ttc license.rtf ttf-ms-win10
cd ttf-ms-win10

makepkg --skipchecksums
sudo pacman -U *.zst
