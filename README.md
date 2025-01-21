# Auto Machine VirtualBox Setup

This repository provides an automated setup for creating virtual machines using Vagrant and VirtualBox on Ubuntu.

## Prerequisites

1. **Install VirtualBox**
   - Download and install VirtualBox from the [official website](https://www.virtualbox.org/wiki/Downloads).

2. **Install Vagrant**
   - Download and install Vagrant from the [HashiCorp website](https://developer.hashicorp.com/vagrant/install).

3. **Check Vagrant Installation**
   ```bash
   vagrant --version
   ```

4. **Verify VirtualBox Installation**
   ```bash
   virtualbox --help
   ```

## Steps to Set Up

1. **Verify Vagrant Box**
   Check if the Ubuntu box is available locally:
   ```bash
   vagrant box list
   ```
   If the box `ubuntu/focal64` does not exist, add it:
   ```bash
   vagrant box add ubuntu/focal64
   ```

2. **Clone the Repository**
   Clone this repository to your local machine:
   ```bash
   git clone https://github.com/Truong-itt/Auto_meachine_virtualBox.git
   cd Auto_meachine_virtualBox
   cd master
   ```
3. **Setup ssh-key**
   You do not have ssh-key:
   ```bash
   ssh-keygen -t ed25519 -C "your_email@example.com"
   ```
   After you read ssh-key for your machine
   ``` bash
   cat ~/.ssh/id_ed25519.pub
   ```
   ##### Replace ssh key with your key in setup-sh.sh file

4. **Config card network and ip local mapping**
   You need chose card network your machine ...
   ```bash
   ip link show
   ip a 
   ```
   ##### Replace the network card name and corresponding ip into the Vagrantfile file
   
5. **Start the Virtual Machines**
   Run the following command to start the virtual machines:
   ```bash
   vagrant up
   ```

6. **Access the Machines**
   - SSH into the master machine:
     ```bash
     vagrant ssh master
     ```
   - SSH into worker1:
     ```bash
     vagrant ssh worker1
     ```
   - SSH into worker2:
     ```bash
     vagrant ssh worker2
     ```
   - SSH by ip local:
     ```bash
     ssh root@192.168.1.101
     ssh root@192.168.1.102
     ssh root@192.168.1.103
     ```
     

7. **Stop the Machines**
   To stop the virtual machines without destroying them:
   ```bash
   vagrant halt
   ```

8. **Destroy the Machines**
   To remove all virtual machines:
   ```bash
   vagrant destroy -f
   ```

## Repository Structure
- **Vagrantfile**: Configuration for virtual machines.
- **install-docker-kube.sh**: Script to set up Docker and Kubernetes on the machines.

## Notes
- Ensure your system supports virtualization (VT-x/AMD-V).
- Update `Vagrantfile` if you need custom configurations for memory, CPU, or network.

For any issues, please raise them in the [Issues section](https://github.com/Truong-itt/Auto_meachine_virtualBox/issues) of this repository.
