  # Minimum required.
  group { 'logusers':
    ensure => 'present',
  }

  # Create a group with a specific GID.
  group { 'stats':
    gid => 2001,
  }
