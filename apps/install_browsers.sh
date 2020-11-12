#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S nautilus gedit firefox file-roller

yay -S gvfs gvfs-nfs gvfs-smb gvfs-mtp

yay -S xdg-user-dirs xdg-utils
xdg-user-dirs-update
