#!/bin/bash

which puppet &> /dev/null
if [[ $? == 1 ]]; then :
else
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
DEBIAN_FRONTEND=noninteractive apt-get install puppet --assume-yes
