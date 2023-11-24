# Install a package
# two
exec { 'install_flask':
  command => 'pip3 install Flask==2.1.0',
  path    => '/tmp/',
  creates => '/tmp',
}
