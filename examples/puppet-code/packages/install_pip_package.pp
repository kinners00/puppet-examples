  # Install pip package
  package { 'pySMART':
    ensure   => 'installed',
    provider => 'pip',
  }
