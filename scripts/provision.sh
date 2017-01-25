#!/bin/sh
cp /vagrant/customization.yml /vagrant/ansible
chown -R vagrant:vagrant /vagrant/ansible
cd /vagrant/ansible
ansible-playbook -v -i inventory angular2-bootcamp.yml
