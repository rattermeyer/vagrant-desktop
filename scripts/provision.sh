#!/bin/sh
cd /vagrant/data/ansible-dev-box
ansible-playbook -i inventory dev.yml
