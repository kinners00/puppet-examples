  file { [  '/usr/local/whisper/', '/usr/local/whisper/2.0',
            '/usr/local/whisper/2.0/bin', '/usr/local/whisper/2.0/log' ]:
    ensure => 'directory',
  }

  # Or you can assign them to a variable and use them in the resource
  $whisper_dirs = [ '/usr/local/whisper/', '/usr/local/whisper/2.0',
                    '/usr/local/whisper/2.0/bin', '/usr/local/whisper/2.0/log',
                  ]

  file { $whisper_dirs:
    ensure => 'directory',
    owner  => 'root',
    group  => 'wheel',
    mode   => '0750',
  }

  # This will fail unless whisper and 2.0 directories already exist
  file { '/usr/local/whisper/2.0/bin':
    ensure => 'directory',
  }

