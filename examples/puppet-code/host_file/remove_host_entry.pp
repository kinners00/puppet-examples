# Requires https://forge.puppet.com/modules/puppetlabs/host_core

  host { 'syslog':
    ensure => 'absent',
  }

  host { 'ntpserver.example.com':
    ensure => 'absent',
  }
