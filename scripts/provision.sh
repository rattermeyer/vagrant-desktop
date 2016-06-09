#!/bin/sh
if [ ! -d ansible-dev-desktop ]; then
  git clone https://github.com/rattermeyer/ansible-dev-desktop.git
  git checkout ubuntu-unity
  cd ansible-dev-desktop
else
  cd ansible-dev-desktop
  git pull
fi
cp /vagrant/external_vars.yml /vagrant/ansible
chown -R vagrant:vagrant /vagrant/ansible
cd /vagrant/ansible
ansible-playbook -vvv -i inventory dev.yml
