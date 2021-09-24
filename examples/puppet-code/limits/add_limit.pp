  # Requires https://forge.puppet.com/modules/saz/limits

  class { 'limits':}

    limits::limits { '*/core':
      ensure     => present,
      user       => 'joeblogs',
      limit_type => 'nofile',
      hard       => 16384,
    }
  # Hard and soft limits
    limits::limits { '*/memlock':
      ensure     => present,
      user       => 'joeblogs',
      limit_type => 'nofile',
      hard       => 16384,
      soft       => 16384,
    }
# Set both limit types in one line
    limits::limits { '*/memlock':
      ensure     => present,
      user       => 'joeblogs',
      limit_type => 'nofile',
      both       => 16384,
    }
