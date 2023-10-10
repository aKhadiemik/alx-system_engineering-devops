# Fix misspelling in wp-settings
exec { 'fix WordPress':
  command  => 'sed -i "s/\b.phpp\b/.php/g" /var/www/html/wp-settings.php',
  path    => '/bin/:/sbin/:/usr/bin/:/usr/sbin/',
  onlyif  => 'test -f /var/www/html/wp-settings.php',
  provider => shell,
}
