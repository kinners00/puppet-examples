# Requires https://forge.puppet.com/modules/puppet/yum

  yum::group { 'Fedora Packager':
    ensure  => present,
    timeout => 300,
  }
