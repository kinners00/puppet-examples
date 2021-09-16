# @summary This is template plan which contains various common plan functions/steps.
# @param targets The targets to run on.
plan adhoc::common_plan_functions (
  TargetSpec $targets,
) {
# /Some examples of types of steps you can use within a plan - more can be found at https://puppet.com/docs/bolt/latest/plan_functions.html 

  # upload_file($file_local, $file_dest, $targets)
  # download_file($source_file, $local_file_dest, $targets)
  # run_command('hostname', $targets)
  # run_task('adhoc::mytasknix', $targets, {'mytaskvar' => $mytaskvar })
  # run_script('/var/tmp/myscript.sh', $targets)
  # run_script('iis/setup.ps1', $targets)
  # run_plan('adhoc::myplan', $targets, mytaskvar => 'hello')
  # ctrl::sleep(10)
  # wait_until_available($targets, wait_time => 300)
  # fail_plan("Something went wrong!")

  # /Warnings will only show when passing "--log-level=warning" - out::message will always be displayed
  # warning("Alert! My plan has came to an end...") 
  # out::message('Something went wrong')

  # /Puppet code example to create file resource. The apply_prep is neccessary to ensure puppet agent installed in dormant state on target node to allow for use of native puppet capabilities.
  # apply_prep($targets)
  # apply($targets){
  #  file { '/opt/var/test.txt':
  #    ensure  => file,
  #    content => 'this file contains sample content to prove this functionality works'
  #  }

  # $content = 'Hello, world!'
  # write_file($content, '/Users/me/hello.txt', $targets)

}
