  # Display a simple value
  $virt = $facts['virtual']
  notify { "I'm using a value !${virt}! ": }

  # Fetch a subhash
  $partitions = $facts['partitions']
  notify { "Displaying a sub hash ${partitions}": }

  # Access a nested value
  $major_release = $::facts['os']['release']['major']
  notify { "My major release version is ${major_release}": }
