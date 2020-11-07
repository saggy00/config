#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo cp "$DIR"/login_bg.png /etc/lightdm
sudo lightdm-greeter-settings
