begin
  require 'vagrant'
rescue LoadError
  raise 'The Vagrant ConfigSpec plugin must be run within Vagrant.'
end

require_relative 'vagrant-configspec/version'

module VagrantPlugins
  module ConfigSpec
    def self.source_root
      @source_root ||= Pathname.new(File.expand_path('../../', __FILE__))
    end

    I18n.load_path << File.expand_path('locales/en.yml', source_root)
    I18n.reload!
  end
end

require_relative 'vagrant-configspec/plugin'
