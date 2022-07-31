#!/bin/bash

PKG_LIST="python3 curl"

echo "=== updating mirrors ==="
cp /etc/apt/sources.list /etc/apt/sources.list.backup
apt-get update
apt-get install -y python3-pip
pip install apt-select
apt-select -C PL -t 10
mv sources.list /etc/apt/sources.list
echo "=== updating system ==="
apt-get update
apt-get upgrade -y
echo "=== update done ==="

echo "=== installing packages ==="

apt-get install -y $PKG_LIST

echo "=== docker install ==="
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

sudo groupadd docker
sudo usermod -aG docker vagrant

echo "=== docker installed ==="


echo "=== kind install ==="

curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.14.0/kind-linux-amd64
chmod +x ./kind
mv ./kind /usr/local/bin/kind
echo 'source <(kind completion bash)' >> /home/vagrant/.bashrc

echo "=== kind installed ==="


echo "=== kubectl install ==="

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
echo 'source <(kubectl completion bash)' >> /home/vagrant/.bashrc
echo 'alias k=kubectl' >> /home/vagrant/.bashrc
echo 'complete -F __start_kubectl k' >> /home/vagrant/.bashrc

echo "=== kubectl installed ==="


echo "=== dlang install ==="

sudo wget https://netcologne.dl.sourceforge.net/project/d-apt/files/d-apt.list -O /etc/apt/sources.list.d/d-apt.list
sudo apt-get update --allow-insecure-repositories
sudo apt-get -y --allow-unauthenticated install --reinstall d-apt-keyring
sudo apt-get update && sudo apt-get -y install dmd-compiler dub

echo "=== dlang installed ==="
