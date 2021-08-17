# CHECK

# enabled at boot 
  service { 'W32Time':
    enable => true,
  }

# ensure running and enabled at boot 
    service { 'W32Time':
    ensure => 'running',
    enable => true,
  }
