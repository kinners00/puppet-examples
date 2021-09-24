# Requires https://forge.puppet.com/modules/puppetlabs/apt

apt::source { 'puppetlabs':
  location => 'http://apt.puppetlabs.com',
  repos    => 'main',
  key      => {
    'id'     => '6F6B15509CF8E59E6E469F327F438280EF8D349F',
    'server' => 'pgp.mit.edu',
  },
}

apt::source { 'debian_unstable':
  comment  => 'This is the iWeb Debian unstable mirror',
  location => 'http://debian.mirror.iweb.ca/debian/',
  release  => 'unstable',
  repos    => 'main contrib non-free',
  key      => {
    'id'     => 'A1BD8E9D78F7FE5C3E65D8AF8B48AD6246925553',
    'server' => 'subkeys.pgp.net',
  },
}

apt::ppa { 'ppa:drizzle-developers/ppa': }

