#!/bin/sh
if [ ! -f /etc/default/docker ]; 
then
  wget -qO- https://get.docker.com/ | sh
fi;