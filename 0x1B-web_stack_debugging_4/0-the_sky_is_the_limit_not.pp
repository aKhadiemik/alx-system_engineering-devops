# Increasing number of worker processes to eliminate failed requests
exec { 'Higher limit':
  command  => 'sed -i "s/ULIMIT=\"-n 15\"/ULIMIT=\"-n 2000\"/g" /etc/default/nginx',
  provider => shell 
}

exec { 'Restart server':
  command  => 'service nginx restart',
  provider => shell,
  require  => Exec['ulimit'],
}
