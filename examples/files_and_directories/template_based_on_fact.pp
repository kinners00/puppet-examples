  # REVIEW / CHANGE
  file { '/etc/ssh/sshd_config' :
    ensure  => present,
    mode    => '0600',
    content => multitemplate(
                              "ssh/${::fqdn}.erb",
                              "ssh/${::domain}.erb",
                              'ssh/default_sshdconfig.erb'
                            ),
  }
