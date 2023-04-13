#!/bin/bash

echo "Atualizando o server"
apt-get update
apt-get upgrade -y
echo "Fim da atualização"
echo "."
echo ".."
echo "..."

echo "instalando serviços e ferramentas"
apt-get install apache2 -y
apt-get install unzip
echo "......"
echo "baixando e copiando arquivos da aplicação"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html


