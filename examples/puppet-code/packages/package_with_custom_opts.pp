  # Enable a repo while installing 'localpkg'
  package { 'localpkg':
    install_options => ['--enablerepo', 'company_repo'],
  }

  # Turn off all plugins and install the package using only the local cache
  package { 'localapppkg':
    install_options => ['--noplugins', '--cacheonly' ],
  }

  # install a package from backports using Apt
  package { 'backported-local-pkg':
    install_options => ['-t', 'jessie-backports'],
  }

  # Install Chocolatey ackage (windows) with spaces - also review https://forge.puppet.com/modules/puppetlabs/chocolatey#install-options-with-quotes-or-spaces
  package {'launchy':
    ensure          => installed,
    provider        => 'chocolatey',
    install_options => ['-override', '-installArgs', '"', '/VERYSILENT', '/NORESTART', '"'],
  }

  # Package names must match their "display name" in Windows - review https://puppet.com/docs/puppet/latest/resources_package_windows.html#resources_package_windows-package-name-displayname
  package { "Git version 1.8.4-preview20130916":
    ensure          => installed,
    source          => 'C:\code\puppetlabs\temp\windowsexample\Git-1.8.4-preview20130916.exe',
    install_options => ['/VERYSILENT']
  }
