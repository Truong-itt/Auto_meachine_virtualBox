# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # Máy Master
    config.vm.define "master" do |master|
      master.vm.box = "ubuntu/focal64"  # Ubuntu 20.04
      master.vm.network "private_network", ip: "192.168.56.101"
      master.vm.hostname = "master.xtl"
      master.vm.provider "virtualbox" do |vb|
        vb.name = "master.xtl"
        vb.cpus = 2
        vb.memory = "2048"
      end
      master.vm.provision "shell", path: "./install-docker-kube.sh"
    end
  
    # Máy Worker 1
    config.vm.define "worker1" do |worker1|
      worker1.vm.box = "ubuntu/focal64"
      worker1.vm.network "private_network", ip: "192.168.56.102"
      worker1.vm.hostname = "worker1.xtl"
      worker1.vm.provider "virtualbox" do |vb|
        vb.name = "worker1.xtl"
        vb.cpus = 2
        vb.memory = "2048"
      end
      worker1.vm.provision "shell", path: "./install-docker-kube.sh"
    end
  
    # Máy Worker 2
    config.vm.define "worker2" do |worker2|
      worker2.vm.box = "ubuntu/focal64"
      worker2.vm.network "private_network", ip: "192.168.56.103"
      worker2.vm.hostname = "worker2.xtl"
      worker2.vm.provider "virtualbox" do |vb|
        vb.name = "worker2.xtl"
        vb.cpus = 2
        vb.memory = "2048"
      end
      worker2.vm.provision "shell", path: "./install-docker-kube.sh"
    end
  end
  