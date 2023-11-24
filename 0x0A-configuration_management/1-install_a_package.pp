# Install a package
# two
package {'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}
# adding notification

notify { 'Flask installed':
  message => 'Flask 2.1.0 installed successfully',
}
