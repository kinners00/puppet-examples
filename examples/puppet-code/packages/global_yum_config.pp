# requires https://forge.puppet.com/modules/puppet/yum

  class { 'yum':
    config_options => {
        my_cachedir => {
        ensure => '/home/waldo/.local/yum/cache',
        key    => 'cachedir',
      },
        gpgcheck    => true,
        debuglevel  => 5,
        assumeyes   => {
        ensure => 'absent',
      },
    }
  }

# Manage yum.conf entries via defined types
  yum::config { 'installonly_limit':
    ensure => 2,
  }

  yum::config { 'debuglevel':
    ensure => absent,
  }
