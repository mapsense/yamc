
# The list of packages that compose a complete MongoDB installation.
automatic['mongodb']['packages'] = [
  'mongodb-org',
  'mongodb-org-server',
  'mongodb-org-shell',
  'mongodb-org-mongos',
  'mongodb-org-tools'
]

# The version of MongoDB to install.
default['mongodb']['version'] = '2.6.1'

# The MongoDB distribution to install. (These are just parameters to apt-get.) 
default['mongodb']['distribution'] = {
  'name'       => 'dist',
  'components' => [ '10gen' ],
  'uri'        => 'http://downloads-distro.mongodb.org/repo/ubuntu-upstart'
}

