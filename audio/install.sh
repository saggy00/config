#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S alsa-utils alsa-oss pulseaudio pulseaudio-alsa pavucontrol
