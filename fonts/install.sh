#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S adobe-source-code-pro-fonts cantarell-fonts font-bh-ttf \
    gnu-free-fonts gsfonts noto-fonts noto-fonts-extra \
    powerline-fonts terminus-font ttf-qurancomplex-fonts \
    ttf-ubuntu-font-family \
    xorg-fonts-100dpi xorg-fonts-75dpi xorg-fonts-alias-100dpi \
    xorg-fonts-alias-75dpi xorg-fonts-alias-misc \
    xorg-fonts-encodings xorg-fonts-misc xorg-xlsfonts

yay -S ttf-dejavu ttf-bitstream-vera ttf-freefont ttf-gentium-basic \
    ttf-inconsolata ttf-liberation ttf-linux-libertine ttf-mgopen \
    ttf-monaco ttf-opensans 

"$DIR"/win10_fonts
