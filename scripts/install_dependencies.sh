#!/bin/bash
sudo yum -y update
sudo yum -y install ruby wget python-pip
curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo yum install -y nodejs
cd /home/ec2-user
wget https://aws-codedeploy-eu-north-1.s3.eu-north-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo pip install awscli