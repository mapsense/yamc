template '/etc/mongod.conf' do
  source 'mongod.conf.erb'
end

service 'mongod' do
  action :restart
end

