require 'spec_helper'

describe 'mongodb::configure' do 
  let (:chef_run) {
    ChefSpec::SoloRunner.new.converge(described_recipe)
  }

  
end

