  file { '/etc/mysql/conf.d/tuning.cnf':
    ensure => 'present',
    source => "puppet:///modules/mysql-server/tuning.${::hostname.cnf}",
  }
