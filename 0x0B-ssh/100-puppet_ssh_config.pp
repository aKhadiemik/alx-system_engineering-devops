# manifest makes changes to ssh_config

include stdlib

file_line { 'Fail to authenticate when password supplied':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'PasswordAuthentication no',
}

file_line { 'Private key for passwordless authentication':
  ensure => present,
  path   => '/etc/ssh/ssh_config',
  line   => 'IdentityFile ~/.ssh/school'
}
