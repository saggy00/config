#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S parcellite

cp -r "$DIR"/parcellite ~/.config
echo "parcellite -n &" >> ~/.xsession
