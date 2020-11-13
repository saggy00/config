#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S light-locker

# Blank the screen after 60 seconds and lock it 120 seconds after
# blanking the screen.
# Use `light-locker-command` for locking or inhibiting.
echo 'xset s 60 120' >> ~/.xsession
echo 'light-locker --lock-after-screensaver=120 --lock-on-suspend --lock-on-lid &' >> ~/.xsession
