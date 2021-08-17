  # the first, most obvious solution is
  package { 'screen':
    ensure => 'installed'
  }
  package { 'strace':
    ensure => 'installed'
  }
  package { 'sudo':
    ensure => 'installed'
  }


  # you can use a global package parameter
  Package {
    ensure => 'installed'
  }

  package { 'screen':}
  package { 'strace':}
  package { 'sudo':}

  # you can specify the packages in an array ...
  $packages = [ 'screen', 'strace', 'sudo' ]

  package { $packages:
    ensure => 'installed'
  }


  # ... and even combine it a global package parameter
  $packages = [ 'screen', 'strace', 'sudo' ]

  Package {
    ensure => 'installed'
  }

  package { $enhancers: }
