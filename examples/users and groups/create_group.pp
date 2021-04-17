  # minimum required.
  group { 'logusers':
    ensure => 'present',
  }

  # create a group with a specific GID.
  group { 'stats':
    gid => 2001,
  }
