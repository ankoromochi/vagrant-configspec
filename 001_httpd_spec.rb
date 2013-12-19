require 'configspec'
require 'pathname'
require 'net/ssh'

include SpecInfra::Helper::Exec
include SpecInfra::Helper::DetectOS

describe package('httpd') do
  it { should be_installed }
end
