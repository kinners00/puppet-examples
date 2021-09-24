# Requires https://forge.puppet.com/modules/puppetlabs/yumrepo_core

yumrepo { 'puppetrepo-products':
  ensure   => 'present',
  name     => 'puppetrepo-products',
  descr    => 'Puppet Labs Products El 7 - $basearch',
  baseurl  => 'http://myownmirror',
  gpgkey   => 'http://myownmirror',
  enabled  => '1',
  gpgcheck => '1',
  target   => '/etc/yum.repo.d/puppetlabs.repo',
}
