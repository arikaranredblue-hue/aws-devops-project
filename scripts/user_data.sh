#!/bin/bash

# Update system
yum update -y

# Install Docker
yum install docker -y

# Start Docker
systemctl start docker
systemctl enable docker

# Add ec2-user to docker group
usermod -aG docker ec2-user

# Pull your image
docker pull arikaran0007/nginx-app

# Run container
docker run -d -p 80:80 arikaran0007/nginx-app