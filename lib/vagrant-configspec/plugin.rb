module VagrantPlugins
  module ConfigSpec
    class Plugin < Vagrant.plugin('2')
      name 'configspec'
      description <<-DESC
      This plugin executes a configspec suite against a running Vagrant instance.
      DESC

      config(:configspec, :provisioner) do
        require_relative 'config'
        Config
      end

      provisioner(:configspec) do
        require_relative 'provisioner'
        Provisioner
      end
    end
  end
end
