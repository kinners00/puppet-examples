# REQUIRES https://forge.puppet.com/modules/puppet/selinux
class { selinux:
  mode => 'enforcing',
  type => 'targeted',
}
