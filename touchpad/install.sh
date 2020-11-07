#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Use `xinput` to check that the device name matches
sudo cp "$DIR"/30-touchpad.conf /etc/X11/xorg.conf.d/
