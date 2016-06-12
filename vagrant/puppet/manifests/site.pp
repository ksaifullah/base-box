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

# Install RVM and Ruby.
class { '::rvm': 
  gnupg_key_id => false
} ->
rvm::system_user { vagrant: ; } ->
rvm_system_ruby {
  'ruby-2.3':
    ensure      => 'present',
    default_use => true;
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