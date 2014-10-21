apt_repository 'mongodb' do
  uri           node['mongodb']['distribution']['uri']
  distribution  node['mongodb']['distribution']['name']
  components    node['mongodb']['distribution']['components']
  keyserver     'hkp://keyserver.ubuntu.com:80'
  key           '7F0CEB10'
  action        :add
end

include_recipe 'apt'

package 'mongodb-org' do
  version node['mongodb']['version']
end

