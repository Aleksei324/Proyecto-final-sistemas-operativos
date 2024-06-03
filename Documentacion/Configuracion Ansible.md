# Configuración de Ansible

Ansible es una herramienta de automatización de TI que permite a los administradores de sistemas configurar y administrar de forma eficiente múltiples nodos de forma simultánea.

Se basa en el uso de playbooks, que son archivos YAML que describen las tareas a realizar en los nodos objetivo.

### Para configurar Ansible para este proyecto, debemos seguir los siguientes pasos:
 1. Instalar Ansible en el sistema operativo.
 2. Crear un archivo de inventario que contenga la lista de los nodos objetivo:

```bash
[grupoprincipal]
192.168.56.3 ansible_ssh_private_key_file=/home/vagrant/.ssh/llave-ansible
```

 3. Crear playbooks YAML que describan las tareas a realizar en los nodos objetivo:

```bash
---
- name: Instalar y configurar servidor web
  hosts: webservers
  tasks:
    - name: Instalar paquetes necesarios
      apt:
        name: apache2
        state: present
    - name: Configurar archivo de index.html
      template:
        src: templates/index.html.j2
        dest: /var/www/html/index.html
      notify:
        - Reiniciar servidor web
```

 4. Ejecutar los playbooks, utilizando el comando "ansible-playbook", especificando el archivo de inventario y el playbook a ejecutar:

```bash
ansible-playbook -i hosts playbook.yml
```

El playbook utilizado para el despliegue de los servicios de este proyecto se encuentra en la carpeta "Archivos configuracion/Ansible".
- [Archivos configuracion Ansible](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/blob/main/Documentacion/Configuracion%20Ansible.md)
