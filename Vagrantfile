# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "CentOS-6.3-x86_64"
  config.vm.network :hostonly, "192.168.33.22"
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "foreman.pp"
    puppet.module_path = "modules"
  end
end
