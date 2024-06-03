#!/bin/bash

echo "Ejecutando playbook de ansible"

ansible-playbook -i hosts playbook.yml
