# Proyecto final: Sistemas Operativos

Este es un proyecto universitario para la materia de sistemas operativos, creado por Norman Pabon, Cristian David Chacon y Camilo Franco Moya. Utiliza las tecnologías Vagrant, Ansible, Nginx, Prometheus y Grafana.

## Integrantes proyecto final

- Norman Pabon 
- Camilo Franco
- Cristian David  
- Marco Aurelio Antonio


## Descripción del Proyecto

El objetivo de este proyecto es crear una máquina virtual con Linux, provisionada mediante Vagrant y Ansible, junto con un servidor web y un servicio de monitoreo como Prometheus.

## Requisitos maquina host

- Vagrant
- VirtualBox

## Configuración del entorno

1. Verifique que cuente con Vagrant y VirtualBox en su computadora.
2. Consulte cómo provisionar una máquina virtual en Vagrant mediante Ansible. En este caso deberá instalar Nginx, Prometheus y Grafana en la máquina virtual.

## Definición de la máquina virtual

1. Crea un archivo `Vagrantfile` en el directorio de tu proyecto. Este archivo contendrá la configuración de tu máquina virtual.
2. Define los siguientes aspectos en tu `Vagrantfile`:
    - Asignación de recursos
    - Sabor del sistema operativo
    - Configuración de red
    - Nombre de usuario y comunicación SSH
    - Generación de par de claves SSH

## Provisionamiento con Ansible

1. Crea un playbook de Ansible que instale y configure el servidor web Nginx.
2. Agrega tareas para instalar y configurar Prometheus en la máquina virtual.
3. Ejecuta el playbook desde tu máquina host para provisionar la máquina virtual.

## Pruebas y monitoreo

1. Inicia la máquina virtual utilizando `vagrant up`.
2. Accede al servidor web desde tu navegador para verificar que esté funcionando correctamente.
3. Verifica que Prometheus esté recopilando métricas del desempeño de la máquina virtual. Configure Grafana para producir un reporte de las métricas recolectadas por Prometheus.

## Documentación

### Listado de documentacion 

- Link a md de nginx
- link a md de grafana
