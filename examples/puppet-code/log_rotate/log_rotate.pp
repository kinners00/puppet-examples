  # Requires https://forge.puppet.com/modules/puppet/logrotate

    logrotate::rule { 'backups':
    path         => '/var/log/backups',
    rotate       => 2,
    rotate_every => 'week',
    compress     => true,
    dateext      => true,
  }
