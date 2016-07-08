# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "home/gentoo-i686"
  config.vm.hostname = "arachni"
  config.vm.network "forwarded_port", guest: 9292, host: 8080, auto_correct: true

  config.vm.provider "virtualbox" do |vb|
  	vb.gui = false
  	vb.name = "Arachni DAST"
  	vb.memory = "2048"
  end
  
  config.vm.provision "shell", path: "provision.sh", privileged: false
end
