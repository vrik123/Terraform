#!/bin/bash
echo "Install PHP and apache2"
sudo apt-get update
sudo apt-get install -y lamp-mariadb10.2-php7.2 php7.2
sudo apt-get install -y lamp-*
sudo apt install php7.4-cli
sudo apt-get install apache2
sudo service apache2 restart


     


