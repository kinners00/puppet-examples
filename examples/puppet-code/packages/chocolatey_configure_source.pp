# Requires https://forge.puppet.com/modules/puppetlabs/chocolatey

  # Disable the default community repository source
  chocolateysource {'chocolatey':
    ensure => disabled,
  }

  # Specify a source with priority
  chocolateysource {'chocolatey':
    ensure   => present,
    location => 'https://chocolatey.org/api/v2',
    priority => 1,
  }

  # Add credentials to a source
  chocolateysource {'sourcename':
    ensure   => present,
    location => 'https://internal/source',
    user     => 'username',
    password => 'password',
  }
