  # remove a package but leave its config files alone
  package { 'vim':
    ensure => 'absent',
  }

  # remove a package and purge its config files
  package { 'vim':
    ensure => 'purged',
  }
