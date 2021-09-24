# Requires https://forge.puppet.com/modules/puppetlabs/host_core

  $ip = $::domain ? {
          /production/ => '10.10.10.10',
          /staging/    => '192.168.23.10',
          default      => '10.100.100.100',
  }

  host { 'syslog':
    ip => $ip,
  }
