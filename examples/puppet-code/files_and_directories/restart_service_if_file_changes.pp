  # CHANGE example
  service { 'sshd':
    ensure  => 'running',
    enable  => true,
    require => Package['openssh-server'],
  }

  # add a notify to the file resource
  file { '/etc/ssh/sshd_config':
    notify  => Service['sshd'],  # this sets up the relationship
    mode    => '0600',
    owner   => 'root',
    group   => 'root',
    require => Package['openssh-server'],
    content => template('ssh/sshd_config.erb'),
  }
