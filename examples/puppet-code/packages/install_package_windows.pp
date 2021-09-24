  # The native puppet package resource can handle .exe and .msi files - more info can be found here https://puppet.com/docs/puppet/latest/resources_package_windows.html
  package { 'mysql':
    ensure          => '5.5.16',
    source          => 'N:\packages\mysql-5.5.16-winx64.msi',
    install_options => ['INSTALLDIR=C:\mysql-5.5'],
  }

  # Package names must match their "display name" in Windows - review https://puppet.com/docs/puppet/latest/resources_package_windows.html#resources_package_windows-package-name-displayname
  package { "Git version 1.8.4-preview20130916":
    ensure          => installed,
    source          => 'C:\code\puppetlabs\temp\windowsexample\Git-1.8.4-preview20130916.exe',
    install_options => ['/VERYSILENT']
  }
