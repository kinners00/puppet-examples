# requires https://forge.puppet.com/modules/puppetlabs/chocolatey

  # Install choco package with arguments (with spaces)
  # Spaces in arguments must always be covered with a separation. Shown below is an example of how you configure -installArgs "/VERYSILENT /NORESTART".
  package {'launchy':
    ensure          => installed,
    provider        => 'chocolatey',
    install_options => ['-override', '-installArgs', '"', '/VERYSILENT', '/NORESTART', '"'],
  }

  # For more info, review https://forge.puppet.com/modules/puppetlabs/chocolatey#install-options-with-quotes-or-spaces
  package {'mysql':
  ensure          => latest,
  provider        => 'chocolatey',
  install_options => ['-override', '-installArgs',
    '"/INSTALLDIR=""C:\Program', 'Files\somewhere"""'],
}

