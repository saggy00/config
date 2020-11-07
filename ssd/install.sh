#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S parted nvme-cli

# Check alignment
partitions=`sudo parted /dev/nvme0n1 -s print | awk '$1+0' | awk '{print $1}' | xargs`

for partition in $partitions; do
    sudo parted /dev/nvme0n1 -s align-check opt $partition || \
        { echo "Misaligned partition #${partition}"; exit 1; }
done

sudo nvme id-ctrl /dev/nvme0 -H | grep -q "Data Set Management Supported" || \
    { echo "Hard drive doesn't support TRIM"; exit 1; }


sudo systemctl enable fstrim.timer
sudo systemctl start fstrim.service

echo "Check if TRIM worked"
sudo systemctl status fstrim.service
sudo journalctl -u fstrim
