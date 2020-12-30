#!/bin/bash
sudo yum -y update

echo "Install Java JDK 8"
sudo yum update
sudo yum list | grep java-1.8
sudo yum install java-1.8.0-openjdk-devel -y
     
echo "Install sonarqube"
cd /opt/
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-6.7.7.zip
sudo unzip sonarqube-6.7.7.zip
sudo chown -R ec2-user:ec2-user sonarqube-6.7.7
cd bin/
./sonar.sh start


