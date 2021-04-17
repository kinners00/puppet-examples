# REQUIRES https://forge.puppet.com/modules/herculesteam/augeasproviders_sysctl

# basic example
sysctl { "kernel.sysrq":
  ensure => absent,
}
