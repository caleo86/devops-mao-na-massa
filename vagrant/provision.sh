#!/usr/bin/env bash
echo "##### Instalando Apache e executando configurações.. #####"

sudo apt-get update -y
sudo apt-get install -y dkms linux-headers-$(uname -r) build-essential virtualbox-guest-dkms

sudo apt-get install -y apache2 >/dev/null 2>&1 

cp -r /vagrant/html/* /var/www/html/


sudo systemctl enable apache2
sudo systemctl start apache2 
