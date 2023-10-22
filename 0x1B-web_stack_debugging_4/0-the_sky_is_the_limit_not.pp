# Increasing number of worker processes to eliminate failed requests
exec {'Higher limit':
  path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  command => 'sed -i "s/-n 15/-n 30000/g" /etc/default/nginx'
}

exec {'Assign ulimit value':
  path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  command => 'sed -i "s/ulimit $ULIMIT/ulimit=$ULIMIT/g" /etc/init.d/nginx'
}

exec {'Restart server':
  path    => [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
  command => 'service nginx reload; service nginx restart'
}
