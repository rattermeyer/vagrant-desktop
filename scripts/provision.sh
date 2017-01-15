#!/bin/sh
cp /vagrant/external_vars.yml /vagrant/ansible
chown -R vagrant:vagrant /vagrant/ansible
cd /vagrant/ansible
#ansible-playbook -vvv -i inventory dev.yml
