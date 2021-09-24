  # Determine the apache-server package based on the operatingsystem fact
  $apache_server = $::operatingsystem ? {
    Fedora  => 'httpd',
    default => 'apache2',
  }

  package { $apache_server:
    ensure => 'present',
    alias  => 'apache_server',
  }

  file { '/var/www/html/index.html':
    source  => 'puppet:///modules/apache_server/index.html',
    require => Package['apache_server'],
  }
