#!/bin/bash
sudo yum -y update

echo "Install Java JDK 8"
sudo apt-get update
sudo apt install -y openjdk-8-jre-headless
     
echo "Install Jenkins"
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install -y --allow-unauthenticated jenkins 
sudo systemctl start jenkins

echo "Install Git"
sudo apt install -y --allow-unauthenticated git 
