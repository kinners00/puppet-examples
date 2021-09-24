  # Preferred symlink syntax
  file { '/tmp/link-to-motd':
    ensure => 'link',
    target => '/etc/motd',
  }
