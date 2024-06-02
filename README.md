# Proyecto final: Sistemas Operativos

Este proyecto despliega los siguientes servicios de red:

- NGINX : Para servir paginas web en la maquina virtual.
- Prometheus : Para tomar metricas del rendimiento del sistema, el servicio de Nginx y la posibilidad
de otras maquinas.
- Grafana : Nos permite visualizar las metricas de Prometheus en dashboards, facilitando la interpretacion
de los datos tomados y permitiendo un analisis mas rapido de los mismos.


## Integrantes proyecto final

- Norman Pabon 
- Camilo Franco
- Cristian David  

## Descripción del Proyecto

El objetivo de este proyecto es crear una máquina virtual con Linux, provisionada mediante Vagrant y Ansible, junto con un servidor web y un servicio de monitoreo como Prometheus.

## Requisitos maquina host

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)
- [Ansible](https://www.ansible.com/)

## Provisionamiento de la VM con Vagrant y VirtualBox

Para desplegar la maquina virtual, ubique el archivo Vagrantfile en la carpeta "Archivos configuracion" del repositorio, ubique el archivo
en la carpeta que desea tener la configuracion de la maquina a crar. 

Una vez tenga el archivo, ejecute el siguiente comando "vagrant up" desde la consola para que Vagrant cree y despliegue la maquina virtual.

imagenVagrantUp


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

- [Configuracion de NGINX](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/blob/main/Documentacion/Configuracion%20Nginx.md)
- [Configuracion de Grafana](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/blob/main/Documentacion/Configuracion%20Ansible.md)
- [Configuracion de Ansible](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/blob/main/Documentacion/Configuracion%20Ansible.md)
