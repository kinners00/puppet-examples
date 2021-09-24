  # Nix example
  user { 'Joe Bloggs':
    ensure           => 'present',
    password         => 'mypassword123',
    password_max_age => 30,
  }

  # Windows example
  user { 'Joe Bloggs':
    ensure           => present,
    password         => 'mypassword123',
    password_max_age => 30,
  }
