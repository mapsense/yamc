# The version of MongoDB to install.
default['mongodb']['version'] = '2.6.1'

# The MongoDB distribution to install. (These are just parameters to apt-get.) 
default['mongodb']['distribution'] = {
  'name'       => 'dist',
  'components' => [ '10gen' ],
  'uri'        => 'http://downloads-distro.mongodb.org/repo/ubuntu-upstart'
}

# The MongoDB configuration to render. (Directly transferred to a YML file.)
default['mongodb']['configuration'] = {
  systemLog: {
    destination: 'file',
    path: '/var/log/mongodb/mongodb.log',
    logAppend: true
  },
  storage: {
    dbpath: '/data/db',
    journal: {
      enabled: true
    }
  },
  processManagement: {
    fork: true
  },
  net: {
    bindIp: '127.0.0.1',
    port: 27017
  }
}

