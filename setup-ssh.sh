#!/bin/bash

# Cài đặt mật khẩu root
echo "root:12345" | sudo chpasswd

# Cấu hình SSH
sudo sed -i 's/^#*PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo sed -i 's/^#*PasswordAuthentication.*/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's/^#*PubkeyAuthentication.*/PubkeyAuthentication yes/' /etc/ssh/sshd_config
sudo sed -i 's|^#*AuthorizedKeysFile.*|AuthorizedKeysFile %h/.ssh/authorized_keys|' /etc/ssh/sshd_config

# Tạo thư mục và thiết lập quyền cho /root/.ssh
sudo mkdir -p /root/.ssh
sudo chmod 700 /root/.ssh
sudo chown root:root /root/.ssh

# Thêm khóa công khai vào authorized_keys
echo "your ssh-key" | sudo tee -a /root/.ssh/authorized_keys
sudo chmod 600 /root/.ssh/authorized_keys
sudo chown root:root /root/.ssh/authorized_keys

# Khởi động lại dịch vụ SSH
sudo systemctl restart sshd
