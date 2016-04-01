# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "puppetlabs/centos-7.0-64-nocm"
  

## Default
config.vm.define :default do |default|

default.vm.provider :virtualbox do |v|
v.memory = 4096
v.cpus = 2
end

default.vm.network :private_network, ip: "10.10.100.100"
default.vm.network "forwarded_port", guest: 443, host: 8443
#Added for test
default.vm.network "forwarded_port", guest: 80, host: 8080
#
default.vm.hostname = 'rdo.sysops.lab'
default.vm.provision :shell, path: "bootstrap.sh"
end
end
