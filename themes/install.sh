#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# yay -S lxappearence

yay -S gnome-icon-theme gnome-icom-themes-extra gnome-icon-theme-symbolic

# yay -S adwaita-icon-theme arc-gtk-theme arc-icon-theme \
#    hicolor-icon-theme sound-theme-freedesktop

yay -S vertex-icons-git vertex-themes-git paper-gtk-theme-git paper-icon-theme-git

cat "$DIR"/xconfig >> ~/.Xresources

mkdir -p ~/.icons/default
cp "$DIR"/icons/defaut/theme.index ~/.icons/default


# For more info: https://github.com/derat/xsettingsd/wiki/Settings
yay -S xsettingsd-git

cp "$DIR"/xsettingsd ~/.xsettingsd
echo "xsettingsd" > ~/.xsession
