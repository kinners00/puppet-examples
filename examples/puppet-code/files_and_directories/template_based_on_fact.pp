  # REVIEW / CHANGE
  file { '/etc/ssh/sshd_config' :
    ensure  => present,
    mode    => '0600',
    content => "ssh/${::fqdn}.erb",
  }
