# manifest makes changes to ssh_config

include stdlib

file_line { 'Fail to authenticate when password supplied':
  ensure 	     => present,
  path   	     => '/etc/ssh/ssh_config',
  line   	     => 'PasswordAuthentication no',
  match              => '^[#]+[\s]*(?i)PasswordAuthentication[\s]+(yes|no)$',
  replace            => true,
  append_on_no_match => true
}

file_line { 'Private key for passwordless authentication':
  ensure  	     => present,
  path    	     => '/etc/ssh/ssh_config',
  line    	     => 'IdentityFile ~/.ssh/school'
  match   	     => '^[#]+[\s]*(?i)IdentityFile[\s]+~/.ssh/id_rsa$',
  replace 	     => true,
  append_on_no_match => true 
}
