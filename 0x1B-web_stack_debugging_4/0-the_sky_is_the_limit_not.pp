# fix a Nginx server that was getting many failed requests
exec {'increase ulimit':
  path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  command => 'sed -i "s/-n 15/-n 30000/g" /etc/default/nginx'
}

exec {'add equal sign to assign value':
  path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  command => 'sed -i "s/ulimit $ULIMIT/ulimit=$ULIMIT/g" /etc/init.d/nginx'
}

exec {'reload and restart Nginx':
  path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  command => 'service nginx reload; service nginx restart'
}
