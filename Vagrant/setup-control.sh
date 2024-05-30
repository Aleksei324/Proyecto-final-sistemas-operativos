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

echo "Descargando los archivos de Ansible"
mkdir Ansible/
cd Ansible/
wget https://raw.githubusercontent.com/Aleksei324/Proyecto-final-sistemas-operativos/main/Ansible/hosts
wget https://raw.githubusercontent.com/Aleksei324/Proyecto-final-sistemas-operativos/main/Ansible/playbook.yml

echo "Finalizando script..."
