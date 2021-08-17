  # display a simple value
  $virt = $facts['virtual']
  notify { "I'm using a value !${virt}! ": }

  # fetch a subhash
  $partitions = $facts['partitions']
  notify { "Displaying a sub hash ${partitions}": }

  # access a nested value
  $major_release = $::facts['os']['release']['major']
  notify { "My major release version is ${major_release}": }

}
