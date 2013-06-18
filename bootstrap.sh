#!/usr/bin/env bash

apt-get update
wget -O - http://bootstrap.saltstack.org | sudo sh

ln -s /vagrant/roots/salt /srv/salt
ln -s /vagrant/roots/pillar /srv/pillar