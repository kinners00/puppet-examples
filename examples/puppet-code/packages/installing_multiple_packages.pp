  # The obvious but least efficient solution 
  package { 'screen':
    ensure => 'installed'
  }
  package { 'strace':
    ensure => 'installed'
  }
  package { 'sudo':
    ensure => 'installed'
  }


  # You can use a global package parameter
  Package {
    ensure => 'installed'
  }

  package { 'screen':}
  package { 'strace':}
  package { 'sudo':}

  # A more efficient method - specify packages in an array
  $packages = [ 'screen', 'strace', 'sudo' ]

  package { $packages:
    ensure => 'installed'
  }
