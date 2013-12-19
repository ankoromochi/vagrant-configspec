Vagrant.require_plugin "vagrant-configspec"

Vagrant.configure("2") do |config|
  config.vm.box     = "centos6.4-x86-minimal"
  config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.4-x86_64-v20130309.box"

  config.vm.provision :configspec do |spec|
    spec.pattern = '*_spec.rb'
  end
end
