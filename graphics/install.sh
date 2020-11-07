#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S mesa vulkan-intel glmark2-git

echo 'Run `glmark2` to benchmark the system'
