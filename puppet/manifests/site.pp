node default {
  notice("$::environment")
  class { '::dynsatis': }
}
