#!/bin/bash

which puppet &> /dev/null

if [[ $? == 1 ]]; then :
  # If exit status is 1, go and install puppet below.
else
  apt-get install --only-upgrade puppet
  exit 0
fi

set -e
set -x

# Ensure we have a deb folder.
mkdir ~/deb
cd ~/deb

# Grab puppetlabs-release.
echo "Downloading puppetlabs-release"
wget -q https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb

# Update package information.
apt-get update > /dev/null

# Install puppet.
apt-get install puppet --assume-yes
