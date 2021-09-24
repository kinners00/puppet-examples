  service { 'sshd':
    ensure => 'running',
    enable => true,
  }

  # Add a notify to the file resource
  file { '/etc/ssh/sshd_config':
    notify => Service['sshd'],  # this sets up the relationship
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/openssh/sshd_config',
  }
