# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # Máy Master
    config.vm.define "master" do |master|
      master.vm.box = "ubuntu/focal64"  # Ubuntu 20.04
      master.vm.network "public_network", ip: "192.168.1.101", bridge: "wlp4s0"
      master.vm.hostname = "master.xtl"
      master.vm.provider "virtualbox" do |vb|
        vb.name = "master.xtl"
        vb.cpus = 2
        vb.memory = "2048"
      end
      master.vm.provision "shell", inline: <<-SHELL
        echo "root:12345" | sudo chpasswd
        sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
        sudo sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
        sudo systemctl restart sshd
      SHELL
      master.vm.provision "shell", path: "./install-docker-kube.sh"
    end
  
    # Máy Worker 1
    config.vm.define "worker1" do |worker1|
      worker1.vm.box = "ubuntu/focal64"
      worker1.vm.network "public_network", ip: "192.168.1.102",bridge: "wlp4s0"
      worker1.vm.hostname = "worker1.xtl"
      worker1.vm.provider "virtualbox" do |vb|
        vb.name = "worker1.xtl"
        vb.cpus = 2
        vb.memory = "2048"
      end
      worker1.vm.provision "shell", inline: <<-SHELL
        echo "root:12345" | sudo chpasswd
        sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
        sudo sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
        sudo systemctl restart sshd
      SHELL
      worker1.vm.provision "shell", path: "./install-docker-kube.sh"
    end
  
    # Máy Worker 2
    config.vm.define "worker2" do |worker2|
      worker2.vm.box = "ubuntu/focal64"
      worker2.vm.network "public_network", ip: "192.168.1.103", bridge: "wlp4s0"
      worker2.vm.hostname = "worker2.xtl"
      worker2.vm.provider "virtualbox" do |vb|
        vb.name = "worker2.xtl"
        vb.cpus = 2
        vb.memory = "2048"
      end
      worker2.vm.provision "shell", inline: <<-SHELL
        echo "root:12345" | sudo chpasswd
        sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
        sudo sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
        sudo systemctl restart sshd
      SHELL
      worker2.vm.provision "shell", path: "./install-docker-kube.sh"
    end
  end
  