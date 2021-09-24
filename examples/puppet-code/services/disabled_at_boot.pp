  service { 'W32Time':
    enable => false,
  }

  service { 'sshd':
    enable => false,
  }
