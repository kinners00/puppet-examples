 # REQUIRES https://forge.puppet.com/modules/puppet/archive 

  $install_path        = '/opt/wso2'
  $package_name        = 'wso2esb'
  $package_ensure      = '4.9.0'
  $repository_url      = 'http://company.com/repository/wso2'
  $wso2_package_source = "${repository_url}/${package_name}-${package_ensure}.tgz"

    file { 'wso2_appdir':
      ensure  => 'directory',
      path    => $install_path,
      owner   => $username,
      group   => $username,
      recurse => true,
      mode    => '0755',
      require => User[$username]
    }

archive { 'wso2esb-4.9.0':
  path         => '/tmp/wso2esb-4.9.0',
  source       => 'http://company.com/repository/wso2/wso2esb-4.9.0.tgz',
  extract      => true,
  extract_path => '/opt/wso2',
  creates      => '/opt/wso2/wso2esb-4.9.0',
  cleanup      => true,
  require      => File['wso2_appdir'],
}
