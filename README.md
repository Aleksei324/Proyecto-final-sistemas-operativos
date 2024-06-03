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

Para poder ejecutar este proyecto, su maquina debe contar con el siguiente software instalado y tener habilitada la opcion de virtualizacion del procesador.

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Como correr el proyecto

### Provisionamiento de la VM con Vagrant y VirtualBox

Para desplegar la maquina virtual, ubique el archivo [Vagrantfile](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/tree/main/Archivos%20configuracion/Vagrant) en la carpeta "Archivos configuracion" del repositorio, ubique el archivo en la carpeta que desea tener la configuracion de la maquina a crear. 

**Importante, los scripts "setup-control.sh" y "setup-host.sh" deben encontrarse en la misma carpeta donde situe el Vagrantfile !**

Una vez tenga el archivo, ejecute el siguiente comando "vagrant up" desde la consola para que Vagrant cree y despliegue la maquina virtual.

![imagenVagrantUp](https://raw.githubusercontent.com/Aleksei324/Proyecto-final-sistemas-operativos/main/Documentacion/media/capturaVagrantup.png)

Ahora, si no nos ingreso automaticamente a la maquina "control-vm" debemos acceder por ssh a ella, para esto nos dirigimos a la consola y ubicamos el id de la maquina creada usando el comando "vagrant global-status", una vez tengamos el id, procedemos a conectarnos con el comando "vagrant ssh idMaquina"

```bash
vagrant global-status
vagrant ssh idMaquina
```

![imagenSSHVagrant](https://raw.githubusercontent.com/Aleksei324/Proyecto-final-sistemas-operativos/main/Documentacion/media/imagenSSHVagrant.png)

Las maquinas creadas, deben quedar con las siguientes direcciones IPV4 asignadas por la configuracion del vagrantFile

- Maquina "Control-vm" : 192.168.56.2
- Maquina "Host-vm" : 192.168.56.3

### Provisionando las maquinas creadas en el paso anterior con Ansible

Para ejecutar el playbook de ansible, el cual nos permitira instalar el software y aplicar las configuraciones necesarias. Debemos ubicarnos en la carpeta /home de la maquina creada en el paso anterior con el nombre "Vagrant"control_vm". Luego, desde la terminal ingresamos a la ruta "/home/vagrant/Proyecto-final-sistemas-operativos/Archivos configuracion/Ansible" y ejecutamos el comando "ansible-playbook -i hosts playbook.yml"

```bash
cd "/home/vagrant/Proyecto-final-sistemas-operativos/Archivos configuracion/Ansible"
ansible-playbook -i hosts playbook.yml
```
Se iniciara el proceso de provisionamiento desde dicha consola, donde nos ira comentando que tareas se encuentra ejecutando, debemos esperar hasta que termine dicho proceso. Al final nos dira si todas las tareas se corrieron sin error, de ser ese el caso ya tendriamos provisionados nuestros sistemas.

![Provisionamiento Ansible](https://raw.githubusercontent.com/Aleksei324/Proyecto-final-sistemas-operativos/main/Documentacion/media/provisionando_ansible.png)

Una vez terminado el provisionamiento las maquinas quedaran con los siguientes servicios:

- Maquina "Control-vm" : Ansible
- Maquina "Host-vm" : Grafana, Prometheus, NGINX, node_exporter (envio de metricas a Prometheus)

### Ingresando a Grafana

Una vez se hayan provisionado las maquinas, podremos acceder a los servicios hosteados por cada una de ellas accediendo a las siguientes urls.

- Consola prometheus : [192.168.56.3:9090](http://192.168.56.3:9090)
- Pagina de Grafana : [192.168.56.3:9090](http://192.168.56.3:3000)
- Pagina desplegada con NGINX : [192.168.56.3:8080](http://192.168.56.3:8080)


![Landing grafana](https://raw.githubusercontent.com/Aleksei324/Proyecto-final-sistemas-operativos/main/Documentacion/media/grafana_landing.png)

## Documentación de configuracion manual

Los siguientes hipervinculos llevan a la documentacion de este proyecto, donde se explica como realizar la configuracion manual de cada uno de los servicios usados. Los links de configuracion se encuentran en el orden que deben ser configurados.

- [Configuracion de Prometheus](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/blob/main/Documentacion/Configuracion%20Prometheus.md) : Para la toma de metricas de los sistemas a monitorear.
- [Configuracion de node_exporter](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/blob/main/Documentacion/Configuracion%20node_exporter.md) : Modulo de Prometheus para tomar metricas mas detalladas del estado del sistema.
- [Configuracion de Grafana](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/blob/main/Documentacion/Configuracion%20Ansible.md) : Herramienta para la visualizacion grafica de las metricas de Prometheus y/o otras fuentes de datos (Datasources).
- [Configuracion de NGINX](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/blob/main/Documentacion/Configuracion%20Nginx.md) : Servicio para servir paginas web, realizar balanceo de carga o crear pipelines de red.
- [Configuracion de Ansible](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/blob/main/Documentacion/Configuracion%20Ansible.md) : Herramienta de software que nos permite la automatizacion y despliegue de los servicios antes configurados, mediante la creacion de un playbook.

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