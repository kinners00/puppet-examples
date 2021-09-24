  service { 'cron':
    ensure => 'running',
  }

  service { 'wuauserv':
    ensure => 'running',
  }
