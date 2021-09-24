  # Windows basic example
  user { 'Joe Bloggs':
    ensure   => 'present',
    password => 'mypassword123',
  }

  # Windows groups example
  user { 'Joe Bloggs':
    ensure   => present,
    password => 'mypassword123',
    groups   => ['Administrators'],
  }


  # expanded nix example
  user { 'Joe Bloggs':
    ensure   => 'present',
    comment  => 'SE Demo Account',
    gid      => '100',
    home     => '/',
    password => 'mypassword123',
    shell    => '/bin/bash',
    uid      => '1010',
  }
