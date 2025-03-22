#! /bin/bash


echo "Atualizando Sistema"
apt-get update
apt-get upgrade -y


echo "instalando apps"
apt-get install apache2 unzip -y

echo "obtendo arquivos da aplicacao"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main

cp -R * /var/www/html/


