class amp::phpmyadmin {

  package
  {
    "phpmyadmin":
      ensure => present,
      require => [
        Exec['apt-get update'],
        Package["php5", "php5-mysql", "apache2"],
      ]
  }

  file
  {
    "/etc/apache2/conf-available/phpmyadmin.conf":
      ensure => link,
      target => "/etc/phpmyadmin/apache.conf",
      require => Package['apache2'],
      notify => Exec["load_phpmyadmin_conf"],
  }

  exec { "load_phpmyadmin_conf":
    command => "/usr/sbin/a2enconf phpmyadmin",
    notify  => Exec["reload_apache"],
  }
  exec { "reload_apache":
    command => "/etc/init.d/apache2 reload",
  }

}