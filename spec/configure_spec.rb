require 'spec_helper'

describe 'mongodb::configure' do 
  configuration = '/etc/mongod.conf'

  let (:chef_run) {
    ChefSpec::SoloRunner.new.converge(described_recipe)
  }

  it "renders the mongodb.conf configuration file in #{configuration}" do
    expect(chef_run).to render_file(configuration)
  end

  it "restarts the mongod service using the new configuration" do
    expect(chef_run).to restart_service('mongod')
  end
end

