require 'spec_helper'

describe 'workstation::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
 # it 'does something' do
  #  skip 'Replace this with meaningful tests'
 # end

describe package('tree') do
 it{ should be_installed }
end

describe file('/etc/motd') do 
 it { should be_owned_by 'root' }
end

describe package('git') do
 it { should be_installed }
end
 
end



