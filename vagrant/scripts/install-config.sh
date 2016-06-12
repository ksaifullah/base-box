#!/bin/bash

# Install hiera config.
if [ ! -e /etc/puppet/hiera.yaml ]; then
  if [ -e /vagrant/vagrant/files/hiera.yaml ]; then
    cp /vagrant/vagrant/files/hiera.yaml /etc/puppet/hiera.yaml
  else
    touch /etc/puppet/hiera.yaml
  fi
fi

# Install puppet config.
if [ ! -e /etc/puppet/puppet.conf ]; then
  if [ -e /vagrant/vagrant/files/puppet.conf ]; then
    cp /vagrant/vagrant/files/puppet.conf /etc/puppet/puppet.conf
  fi
fi