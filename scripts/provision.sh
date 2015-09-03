#!/bin/sh
if [ ! -d ansible-dev-desktop ]; then
  git clone https://github.com/rattermeyer/ansible-dev-desktop.git
  git checkout xubuntu
  cd ansible-dev-desktop
else
  cd ansible-dev-desktop
  git pull
fi
#ansible-playbook -i inventory dev.yml
