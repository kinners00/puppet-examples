   # TEST REQUIRES https://forge.puppet.com/modules/puppetlabs/host_core

  # always test with noop first - use with extreme caution!
  resources { 'host':
    purge => true,
    noop  => true,
  }

  # remove ALL unmanaged host resources
  resources { 'host':
    purge => true
  }
