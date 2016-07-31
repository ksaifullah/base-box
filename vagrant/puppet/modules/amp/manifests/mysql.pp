class amp::mysql {

  package { "mysql-server":
    ensure => present,
  }

  service { "mysql":
    ensure  => running,
    require => Package["mysql-server"],
    notify  => Exec["set-mysql-password"],
  }

  exec { "set-mysql-password":
    command => "mysqladmin -u root password root",
  }
  
}