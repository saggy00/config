#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# More on: https://wiki.archlinux.org/index.php/Systemd-timesyncd

sudo systemctl enable systemd-timesyncd.service
sudo systemctl start systemd-timesyncd.service

echo 'Check that synchronization is successfull by running `timedatectl timesync-status` (wait a bit between stating the service and issuing the command)'
