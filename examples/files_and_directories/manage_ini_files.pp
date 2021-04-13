  # REQUIRES https://forge.puppet.com/modules/puppetlabs/inifile
ini_subsetting {'sample subsetting':
  ensure            => present,
  section           => '',
  key_val_separator => '=',
  path              => '/etc/default/pe-puppetdb',
  setting           => 'JAVA_ARGS',
  subsetting        => '-Xmx',
  value             => '512m',
}
