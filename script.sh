#!/bin/bash
while IFS=, read usuario contra dominio 
do
  echo "usuario      -> [${usuario}]"
  echo "contraseña  -> [${contra}]"
  echo "dominio -> [${dominio}]"
#creacion ftp
     PS=$(openssl rand -base64 12)   
     sudo adduser $usuario $contra   
     sudo usermod -a -G ftp $usuario
     sudo nano /etc/vsftpd.chroot_list > $usuario    
#apache
    sudo mkdir /var/www/html/$usuario
    sudo chown -R $usuario:$usurio /var/www/html/$usuario
    sudo chmod -R 755 /var/www/html/$usuario
    cp /var/www/html/tosky/index.html /var/www/html/$usuario/
#el sitio web será--> ipnuestramaquina/nombreusuario
done < <(tail -n +2 usuarios.csv)








































