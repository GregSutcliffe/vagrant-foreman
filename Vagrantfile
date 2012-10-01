# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
end

Vagrant::Config.run do |config|
  config.vm.define :allinone do |aio_config|
    #aio_config.vm.box = "squeeze64"
    aio_config.vm.box = "CentOS-6.3-x86_64"
    aio_config.vm.host_name = "installer"
    aio_config.vm.network :hostonly, "192.168.100.50"
    aio_config.vm.customize ["modifyvm", :id, "--memory", 1024]
    aio_config.vm.forward_port 3000, 3000
    aio_config.vm.provision :shell, :path => "setup.sh" # Get puppet to the right version first
    aio_config.vm.provision :puppet do |puppet|
      puppet.manifests_path = "manifests"
      puppet.manifest_file  = "aio.pp"
      puppet.module_path    = "modules"
    end
  end
end
