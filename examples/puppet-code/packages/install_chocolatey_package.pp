# requires https://forge.puppet.com/modules/puppetlabs/chocolatey

  # Chocolatey must be installed first before using it as a providor with the package resource.

  # Basic install
  package { 'notepadplusplus':
    ensure   => installed,
    provider => 'chocolatey',
  }

  # Latest version
  package { 'notepadplusplus':
    ensure   => latest,
    provider => 'chocolatey',
  }

  # Specific version
  package { 'notepadplusplus':
    ensure   => '6.7.5',
    provider => 'chocolatey',
  }

  # Specify a custom source
  package { 'notepadplusplus':
    ensure   => '6.7.5',
    provider => 'chocolatey',
    source   => 'C:\local\folder\packages',
  }

  package { 'notepadplusplus':
    ensure   => '6.7.5',
    provider => 'chocolatey',
    source   => 'https://custom.nuget.odata.feed/api/v2/',
  }
