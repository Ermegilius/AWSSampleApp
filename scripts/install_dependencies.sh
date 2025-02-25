#!/bin/bash
# Update packages and install core dependencies
sudo yum update -y
sudo yum install -y ruby wget python-pip git

# Install CodeDeploy agent (in case it's not installed)
cd /home/ec2-user
wget https://aws-codedeploy-eu-central-1.s3.eu-central-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

# Install Node.js (latest LTS version, e.g., v20.x)
curl -fsSL https://rpm.nodesource.com/setup_20.x | sudo bash -
sudo yum install -y nodejs

# Install TypeScript globally (optional but recommended)
sudo npm install -g typescript

# Install Apache HTTP server (if serving static site)
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

# Install AWS CLI tools (optional, but useful)
sudo yum install -y python-pip
sudo pip install awscli