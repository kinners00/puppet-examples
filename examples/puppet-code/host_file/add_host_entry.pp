# Requires https://forge.puppet.com/modules/puppetlabs/host_core

  # Basic example 
  host { 'syslog':
    ip           => '10.100.10.50',
  }

  # Create a fully qualified full host entry with an alias
  host { 'ntpserver.example.com':
      ensure       => 'present',
      ip           => '10.100.10.50',
      host_aliases => ['timeserver'],
    }

  # Host entry with multiple aliases
  host { 'dashboard':
    ensure       => 'present',
    ip           => '10.100.10.60',
    host_aliases => ['nagios', 'munin',],
    target       => '/etc/hosts',
  }
