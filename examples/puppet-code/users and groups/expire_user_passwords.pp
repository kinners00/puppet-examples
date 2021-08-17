  # nix example
  user { 'Joe Bloggs':
    ensure           => 'present',
    password         => 'mypassword123',
    password_max_age => 30,
  }

    # windows example
  user { 'Joe Bloggs':
    ensure           => present,
    password         => 'mypassword123',
    password_max_age => 30,
  }
