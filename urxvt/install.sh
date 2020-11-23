#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S rxvt-unicode rxvt-unicode-terminfo urxvt-perls urxvt-font-size-git

mkdir ~/.fonts
cp -r "$DIR"/powerline ~/.fonts
fc-cache -f -v

cat config >> ~/.Xresources

# Bring a urxvt server upon session startup.
# To take advantage of the session, launch terminals
# using `urxvtc` instead of `urxvt`.
echo "urxvtd -q -f -o" >> ~/.xsession
