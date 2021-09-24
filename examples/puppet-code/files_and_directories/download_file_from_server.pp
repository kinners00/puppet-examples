 # REQUIRES https://forge.puppet.com/modules/puppet/archive

  archive { '/tmp/vagrant.deb':
    ensure => present,
    source => 'https://releases.hashicorp.com/vagrant/2.2.3/vagrant_2.2.3_x86_64.deb',
    user   => 0,
    group  => 0,
  }
