#!/bin/bash

echo "Ejecutando script como usuario..."

# Cambiar al directorio del usuario
cd ~

echo "Instalando Ansible"
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible

echo "Generando las llaves del usuario para utilizar Ansible por ssh"
# Es importante no ser root para este paso
ssh-keygen -t rsa -N "" -f ./.ssh/llave-ansible
sudo cp ./.ssh/llave-ansible.pub /vagrant/

# Versión alternativa:
#ssh-copy-id -i ./.ssh/llave-ansible -o PasswordAuthentication=no vagrant@192.168.56.2

echo "Finalizando script..."
