#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S bash-completion

cp "$DIR"/bashrc ~/.bashrc
cp "$DIR"/profile ~/.profile
cp "$DIR"/profile_paths ~/.profile_paths
