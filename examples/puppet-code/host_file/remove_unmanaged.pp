# REQUIRES https://forge.puppet.com/modules/puppetlabs/host_core

  # Always test with noop first - use with extreme caution!
  resources { 'host':
    purge => true,
    noop  => true,
  }

  # Remove ALL unmanaged host resources
  resources { 'host':
    purge => true
  }
