# Manifest file for installation of Nginx and set up a 301 redirect status

exec { 'update system':
        command => '/usr/bin/apt-get update',
}

package { 'nginx':
  ensure => installed,
  require => Exec['update system']
}

exec { 'redirect_me':
        command => 'sed -i "24i\        rewrite ^/redirect_me https://www.youtube.com/watch?v=QH2-TGUlwu4 permanent;" /etc/nginx/sites-available/default',
        provider => 'shell'
}

file { '/var/www/html/index.html':
  content => 'Hello World!',
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'],
}
