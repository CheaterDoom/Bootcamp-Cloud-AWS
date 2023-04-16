#!/bin/bash
sudo su
apt update -y
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "criando diretorios"

mkdir publico
mkdir adm
mkdir ven
mkdir sec

echo "criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "mudando os diretorios dos grupos"

chgrp GRP_ADM /home/vagrant/adm
chgrp GRP_VEN /home/vagrant/ven
chgrp GRP_SEC /home/vagrant/sec


echo "criando os usuarios"

useradd carlos -c "Carlos Farias" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Farias" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João Farias" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd debora -c "Debora Farias" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Farias" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto Farias" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd josefina -c "Josefina Farias" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda Farias" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogerio Farias" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "alterando as permissões dos diretorios"

chmod 777 /home/vagrant/publico
chmod 770 /home/vagrant/ven
chmod 770 /home/vagrant/sec
chmod 770 /home/vagrant/adm

echo "configurando Servidor Web"
systemctl start apache2
systemctl enable apache2

#echo "Download da Aplicação Web"
rm -Rf /var/www/html/index.html
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main/
cp -R * /var/www/html/





echo "fim"
