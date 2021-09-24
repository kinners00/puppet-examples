  # Install ruby gem
  package { 'sinatra':
    ensure   => 'installed',
    provider => 'gem',
  }
