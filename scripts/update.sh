#!/bin/sh
apt-get update
apt-get upgrade -y
/etc/init.d/vboxadd setup
