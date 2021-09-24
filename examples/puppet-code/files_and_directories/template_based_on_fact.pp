  # Will create file with content from the 'templates' folder of the module/directory 'profile' (profile/templates/myFQDN.epp). 
  # The template applied will correspond to the target nodes FQDN.
  file { '/etc/ssh/sshd_config' :
    ensure  => present,
    mode    => '0600',
    content => template("profile/${::fqdn}.epp")
  }
