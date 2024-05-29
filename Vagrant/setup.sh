#!/bin/bash

echo Ejecutando script...

# Cambiar al directorio del usuario
cd ~

# Actualizar e instalar Ansible
sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install -y ansible

# Generar las llaves del usuario para utilizar Ansible por ssh
# Es importante no ser root para este paso
ssh-keygen -N "" -f ./.ssh/llave-ansible

echo Finalizando script...
