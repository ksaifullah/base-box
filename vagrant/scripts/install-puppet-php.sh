#!/usr/bin/env bash
# Puppet apache module installation.
# @see https://forge.puppet.com/puppetlabs/apache.

MODULE_NAME="mayflower-php"

if type puppet > /dev/null; then
  
  puppet module list | grep $MODULE_NAME &> /dev/null
  if [[ $? == 1 ]]; then
    puppet module install $MODULE_NAME
  else
    echo "$MODULE_NAME already exists"
  fi
fi
