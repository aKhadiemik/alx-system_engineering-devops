# Increasing number of worker processes to eliminate failed requests
exec { 'Higher limit':
  #command => "sed -i 's/worker_processes 4;/worker_processes 7;/g' /etc/nginx/nginx.conf; sudo service nginx restart",
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => ['/usr/local/bin:/bin/']
}
