#!/bin/bash
echo "Install PHP and apache2"
sudo apt-get update
sudo apt update && sudo apt-add-repository -y --update ppa:ansible/ansible
sudo apt install ansible -y