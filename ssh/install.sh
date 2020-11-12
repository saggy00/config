#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

yay -S openssh gnupg
echo 'eval $(ssh-agent)' >> ~/.xsession
echo 'eval $(gpg-agent)' >> ~/.xsession

echo 'When importing your private keys, do not forget to trust them ultimately!'
echo 'Run `gpg --edit-key <email>`, then type `trust` and follow the instructions'
