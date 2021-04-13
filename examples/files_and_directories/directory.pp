  # create a directory
  file { '/etc/site-conf':
    ensure => 'directory',
  }

  # this example is INCORRECT and creates a file
  file { '/etc/site-conf/':
    ensure => 'present',
  }

  # a fuller example, including permissions and ownership
  file { '/var/log/admin-app-log':
    ensure => 'directory',
    owner  => 'root',
    group  => 'wheel',
    mode   => '0750',
  }
