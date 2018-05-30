node default {
  file {'/root/README':
    ensure  => file,
    content => 'This is a readme file',
    owner   => 'root',
  }
}

node 'puppet.master' {
  inlcude role::master_server
}
