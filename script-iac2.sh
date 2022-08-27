#!/bin/bash

echo "Atualizando servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação.."
cd /tmp
wget https://github.com/igordavid19/page-instagram/archive/refs/heads/main.zip
unzip main.zip
cd page-instagram-main
cp -R * /var/www/html/ 
