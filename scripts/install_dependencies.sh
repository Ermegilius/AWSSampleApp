#!/bin/bash
sudo yum update -y
sudo yum install -y httpd nodejs npm ruby wget python-pip

# Install and start Apache (httpd)
sudo systemctl start httpd
sudo systemctl enable httpd

# Install CodeDeploy agent if needed
cd /home/ec2-user
wget https://aws-codedeploy-eu-central-1.s3.eu-central-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto