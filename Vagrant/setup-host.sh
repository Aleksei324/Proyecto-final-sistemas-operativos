#!/bin/bash

echo "Ejecutando script como root..."

# Cambiar al directorio de usuario
cd /home/vagrant/

echo "Añadiendo la llave publica y modificando la configuración de ssh"
echo "PubKeyAuthentication yes" >> /etc/ssh/sshd_config
cat /vagrant/llave-ansible.pub >> ./.ssh/authorized_keys

echo "Reiniciando el servicio para aplicar los cambios"
systemctl restart ssh.service

echo "Finalizando script..."
