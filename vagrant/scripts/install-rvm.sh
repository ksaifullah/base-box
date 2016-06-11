#!/usr/bin/env bash
# @see https://rvm.io/integration/vagrant

if ! type rvm > /dev/null; then
  # Install rvm if not already exists.
  cd /home/vagrant
  gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
  curl -sSL https://get.rvm.io | bash -s $1
else
  # Get the latest stable if already exists.
  rvm get stable
fi