  # Remove a package but leave its config files alone
  package { 'vim':
    ensure => 'absent',
  }

  # Remove a package and purge its config files
  package { 'vim':
    ensure => 'purged',
  }
