# REQUIRES https://forge.puppet.com/modules/herculesteam/augeasproviders_sysctl

# Basic example
sysctl { "net.ipv4.ip_forward":
  ensure => present,
  value  => "1",
}

# Manage entry in another sysctl.conf location
sysctl { "net.ipv4.ip_forward":
  ensure => present,
  value  => "1",
  target => "/etc/sysctl.d/forwarding.conf",
}
