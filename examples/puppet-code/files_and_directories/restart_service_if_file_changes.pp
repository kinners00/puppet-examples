  # The two examples below create the same relationship
  
  
  # add subscribe to the service resource
  service { 'sshd':
    ensure    => running,
    enable    => true,
    subscribe => File['/etc/ssh/sshd_config'],
  }

  file { '/etc/ssh/sshd_config':
    ensure => file,
    mode   => '0600',
    source => 'puppet:///modules/sshd/sshd_config',
}


  # or
  
  service { 'sshd':
    ensure    => running,
    enable    => true,
  }

  # add a notify to the file resource
  file { '/etc/ssh/sshd_config':
    ensure => file,
    mode   => '0600',
    source => 'puppet:///modules/sshd/sshd_config',
    notify => Service['sshd'],
}
