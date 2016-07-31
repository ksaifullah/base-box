# Puppet configurations

Exec { path =>  [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }

class base {

  ## Update apt-get ##
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
  }
}

include base
include amp
include utility
