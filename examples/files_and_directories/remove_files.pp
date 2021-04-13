  # Always remove the given file
  tidy { '/tmp/install-artifact': }

  # remove all files from /tmp/dropbox
  tidy { 'clean_dropbox':
    path    => '/tmp/dropbox',
    recurse => 1,
  }

  # remove all files, in /tmp/image_cache,
  # that are older than 1 week
  tidy { 'prune_old_caches':
    path    => '/tmp/image_cache',
    age     => '1w',
    recurse => 1,
  }
