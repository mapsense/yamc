template '/etc/mongod.conf' do
  source 'mongod.conf.erb'
end

directory node['mongodb']['dbPath'] do
  owner 'mongodb'
  recursive true
end

service 'mongod' do
  action :restart
end

