#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S accountsservice lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings
sudo cp "$DIR"/login_bg.png /etc/lightdm
sudo lightdm-gtk-greeter-settings
sudo systemctl enable lightdm.service

rm ~/.xinitrc

sed -i '1s/^/#!\/bin\/bash\n/' ~/.xsession
chmod u+x ~/.xsession

echo "Reboot"
