# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.define "ubuntu" do |ubuntu|
    ubuntu.vm.box = "ubuntu/bionic64"
    ubuntu.vm.hostname = "ubuntu"
    ubuntu.vm.network "private_network", ip: "192.168.56.2"
    ubuntu.vm.provision "shell", path: "ubuntu.sh"    
  end
  
end