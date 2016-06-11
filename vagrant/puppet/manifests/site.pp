
Exec {
    path => [
        '/usr/local/sbin',
        '/usr/local/bin',
        # '/opt/local/bin',
        '/usr/bin',
        '/usr/sbin',
        '/bin',
        '/sbin'
    ],
    logoutput => false,
}

package { 'puppet':
  ensure  => present,
}

# class { 'apache':
#   default_vhost => false,
# }

# apache::vhost { 'www.khalid.bs':
#   servername      => 'khalid.bs',
#   port            => '80',
#   docroot         => '/var/www/khalid',
#   docroot_owner   => 'vagrant',
#   docroot_group   => 'vagrant',
# }