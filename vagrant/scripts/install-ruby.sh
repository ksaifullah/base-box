#!/usr/bin/env bash
# @see https://rvm.io/integration/vagrant

source $HOME/.rvm/scripts/rvm

if type rvm > /dev/null; then
  rvm use --default --install $1

  shift

  if (( $# ))
    then gem install $@
  fi

  rvm cleanup all
fi
