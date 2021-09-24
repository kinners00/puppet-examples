 # REQUIRES https://forge.puppet.com/modules/puppet/archive 


# The example below will download an archive from https://www.nano-editor.org/dist/v5/nano-5.8.tar.gz to /tmp/nano-5.8.tar.gz and extract to /tmp and cleans up tarball download.
# 'creates' parameter must be specified otherwise cleanup will not occur, regardless of 'cleanup' parameter value. 

  archive { 'nano-5.8.tar.gz':
    ensure       => present,
    path         => '/tmp/nano-5.8.tar.gz',
    extract      => true,
    extract_path => '/tmp',
    cleanup      => true,
    creates      => '/tmp/nano-5.8',
    source       => 'https://www.nano-editor.org/dist/v5/nano-5.8.tar.gz',
  }


