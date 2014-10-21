apt_repository 'mongodb' do
  uri           node['mongodb']['distribution']['uri']
  distribution  node['mongodb']['distribution']['name']
  keyserver     'hkp://keyserver.ubuntu.com:80'
  key           '7F0CEB10'
end

include_recipe 'apt::default'

node['mongodb']['packages'].map do |name|
  package name do
    version node['mongodb']['version']
  end
end

