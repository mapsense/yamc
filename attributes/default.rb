# The version of MongoDB to install.
default['mongodb']['version'] = '2.6.1'

# The MongoDB distribution to install. (These are just parameters to apt-get.) 
default['mongodb']['distribution'] = {
  'name'       => 'dist',
  'components' => [ '10gen' ],
  'uri'        => 'http://downloads-distro.mongodb.org/repo/ubuntu-upstart'
}

# Where MongoDB should keep its log file.
default['mongodb']['log'] = '/var/log/mongodb/mongodb.log'

# Where MongoDB should keep its database files.
default['mongodb']['data'] = '/data/db'

# What port MongoDB should listen on.
default['mongodb']['port'] = 27017

# The IP address MongoDB should bind to.
default['mongodb']['bindIp'] = '127.0.0.1'

