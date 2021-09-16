# @summary This is template plan contains logic to handle cross platform tasks.
# @param targets The targets to run on.
plan adhoc::cross_platform(
  TargetSpec $targets,
  String[4] $mytaskvar,
) {

out::message('Checking OS version')

# Use puppet agent/facter to determine target OS for further actions below - apply_prep installs puppet agent in dormant state to enable profiling of targets facts via facter (built into puppet agent). 
  $targets.apply_prep

  $win_targets = get_targets($targets).group_by |$target| { $target.facts['kernel'] }['windows']
  $nix_targets = get_targets($targets).group_by |$target| { $target.facts['kernel'] }['Linux']

out::message('Running mytask')

# Basic if else statement to ensure each task runs on a compatible target
  if ($win_targets) {
    run_task('adhoc::mytaskwin', $win_targets, {'mytaskvar' => 'hello world' })
  } elsif ($nix_targets) {
    run_task('adhhoc::mytasknix', $nix_targets, {'mytaskvar' => 'hello world' })
  } else  {
    fail_plan('OS is not compatible!')
  }
}
