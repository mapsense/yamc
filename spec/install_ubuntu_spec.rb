require 'spec_helper'

describe 'mongodb::install_ubuntu' do 
  let (:chef_run) {
    ChefSpec::SoloRunner.new.converge(described_recipe)
  }

  it 'installs the MongoDB packages' do
    chef_run.node['mongodb']['packages'].map do |package|
      expect(chef_run).to install_package(package)
    end
  end

  it 'installs the correct version of MongoDB packages' do
    test_version = '2.4.9'
    chef_run.node.set['mongodb']['version'] = test_version
    chef_run.converge(described_recipe)

    chef_run.node['mongodb']['packages'].map do |package|
      expect(chef_run).to install_package(package).with(version: test_version)
    end
  end
end

