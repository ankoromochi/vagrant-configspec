# vagrant-configspec

vagrant-configspec is a vagrant plugin that implements configspec as a provisioner.
Issues and pull requests are welcome.

## Installation

Install the Vagrant Configspec plugin

    $ vagrant plugin install vagrant-configspec

## Example Usage

Configure the provisioner

```ruby
Vagrant.configure('2') do |config|
  # ...

  config.vm.provision :configspec do |spec|
    spec.pattern = '*_spec.rb'
  end
end
```

You'll want to place some boilerplate into a file named `spec_helper.rb`

```ruby
require 'configspec'
require 'pathname'
require 'net/ssh'

include SpecInfra::Helper::Ssh
include SpecInfra::Helper::DetectOS
```

Then you're ready to write your specs

```ruby
require_relative 'spec_helper'

describe package('httpd') do
  it { should be_installed }
end
```
