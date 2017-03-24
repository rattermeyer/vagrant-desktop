# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  config.vm.box = "geerlingguy/ubuntu1604"
  config.vm.box_check_update = false

  config.vm.provider "virtualbox" do |vb|
    vb.name= "desktop-dev"
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true

    # Customize the amount of memory on the VM:
    vb.memory = "4096"
    vb.cpus = 4
    vb.customize ["modifyvm", :id, "--accelerate3d", "on"]
    vb.customize ["modifyvm", :id, "--draganddrop", "bidirectional"]
    vb.customize ["modifyvm", :id, "--vram", "256"]
    vb.customize ["storageattach", :id, "--storagectl", "IDE Controller", "--port", "1", "--device", "0", "--type", "dvddrive", "--medium", "emptydrive"]
  end

  config.vm.provision "shell", path: "scripts/ansible.sh"
  config.vm.provision "shell", path: "scripts/provision.sh"
end
