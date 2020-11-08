#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sudo hwclock --systohc

sudo cp "$DIR"/hostname /etc/hostname
sudo cp "$DIR"/hosts /etc/hosts

sudo sed -i '/fr_CH.UTF-8 UTF-8/s/^#//' /etc/locale.gen
sudo locale-gen
sudo cp "$DIR"/locale.conf /etc/locale.conf
