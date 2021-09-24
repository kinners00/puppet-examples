  # Install package
  package { 'vim':
    ensure => 'installed',
  }

  # Install latest version of package
  package { 'vim':
    ensure => 'latest',
  }

  # Install specific version of package
  package { 'vim':
    ensure   => '8.2',
  }
