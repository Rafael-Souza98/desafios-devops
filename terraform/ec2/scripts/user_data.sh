#!/bin/bash

# Update the system
apt-get update

# Install prerequisites for Docker
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update apt package list (with the new Docker repository)
apt-get update

# Install Docker
apt-get install -y docker-ce docker-ce-cli containerd.io

# Start and enable Docker service
systemctl start docker
systemctl enable docker

docker run --name webserver -d -p 80:80 httpd:latest