# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-configspec/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-configspec"
  spec.version       = VagrantPlugins::ConfigSpec::VERSION
  spec.authors       = ["ohta-nobuyuki"]
  spec.email         = ["ohta-nobuyuki@kayac.com"]
  spec.description   = %q{Vagrant configspec provisioner}
  spec.summary       = %q{Vagrant configspec provisioner}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'configspec'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
