  # Create a directory
  file { '/etc/site-conf':
    ensure => 'directory',
  }

  # This example is INCORRECT and creates a file
  file { '/etc/site-conf/':
    ensure => 'present',
  }

  # A fuller example, including permissions and ownership
  file { '/var/log/admin-app-log':
    ensure => 'directory',
    owner  => 'root',
    group  => 'wheel',
    mode   => '0750',
  }
