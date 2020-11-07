#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S rxvt-unicode rxvt-unicode-terminfo urxvt-perls urxvt-font-size-git

mkdir ~/.fonts
cp -r "$DIR"/powerline ~/.fonts
fc-cache -f -v

cat config >> ~/.Xresources
