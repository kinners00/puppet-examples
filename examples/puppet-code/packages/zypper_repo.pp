# Requires https://forge.puppet.com/modules/puppet/zypprepo

zypprepo { 'openSUSE_12.1':
  ensure        => present,
  baseurl       => 'http://download.opensuse.org/distribution/12.1/repo/oss/suse/',
  enabled       => 1,
  autorefresh   => 1,
  name          => 'openSUSE_12.1',
  gpgcheck      => 1,
  repo_gpgcheck => 1,
  pkg_gpgcheck  => 1,
  priority      => 98,
  keeppackages  => 1,
  type          => 'rpm-md',
}
