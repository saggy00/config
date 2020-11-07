#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd "$DIR"

git clone https://aur.archlinux.org/ttf-ms-win10.git

cp *.ttf *.ttc license.rtf ttf-ms-win10
cd ttf-ms-win10

makepkg -si --skipchecksums
