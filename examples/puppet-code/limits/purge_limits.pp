  # REQUIRES https://forge.puppet.com/modules/saz/limits
  class { 'limits':
  purge_limits_d_dir => false,
}
