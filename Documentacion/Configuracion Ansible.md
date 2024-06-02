# Configuracion de Ansible

Ansible es una herramienta de automatización de TI que permite a los administradores de sistemas configurar y administrar de forma eficiente múltiples nodos de forma simultánea. 

Se basa en el uso de playbooks, que son archivos YAML que describen las tareas a realizar en los nodos objetivo.

### Para configurar Ansible para este proyecto, debemos seguir los siguientes pasos:
 1. Instalar Ansible en el sistema operativo.
 2. Crear un archivo de inventario que contenga la lista de los nodos objetivo.
 3. Crear playbooks que describan las tareas a realizar en los nodos objetivo.
 4. Ejecutar los playbooks utilizando el comando "ansible-playbook" y especificando el archivo de inventario y el playbook a ejecutar.

### Ejemplo de playbook básico para instalar y configurar un servidor web en los nodos objetivo:

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

 TODO : Terminar documentacion

