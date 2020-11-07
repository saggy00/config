#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# For more info:  https://gitlab.com/wavexx/acpilight

yay -S acpilight
sudo cp "$DIR"/90-backlight.rules /etc/udev/rules.d/
sudo usermod -aG video $USER
