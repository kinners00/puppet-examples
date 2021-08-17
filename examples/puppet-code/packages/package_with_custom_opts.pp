  # enable a repo while installing 'localpkg'
  package { 'localpkg':
    install_options => ['--enablerepo', 'company_repo'],
  }

  # turn off all plugins and install the package
  # using only the local cache
  package { 'localapppkg':
    install_options => ['--noplugins', '--cacheonly' ],
  }

  # install a package from backports using Apt
  package { 'backported-local-pkg':
    install_options => ['-t', 'jessie-backports'],
  }
