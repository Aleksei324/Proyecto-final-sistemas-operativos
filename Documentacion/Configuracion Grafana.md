# Configuración Rápida de Grafana en Ubuntu 20.04 LTS

Este documento proporciona una guía rápida para instalar y configurar Grafana en un servidor con Ubuntu 20.04 LTS.

### Paso 1: Actualizar el Sistema

Antes de instalar Grafana, asegúrate de que tu sistema esté actualizado.

```bash
sudo apt-get update
sudo apt-get upgrade -y
```

### Paso 2: Instalar Dependencias

Instala las dependencias necesarias, como apt-transport-https y software-properties-common.


```bash
sudo apt-get install -y apt-transport-https software-properties-common wget
```



### Paso 3: Añadir el Repositorio de Grafana

Añade la clave GPG oficial de Grafana y el repositorio de Grafana.


```bash

wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"
```


### Paso 4: Instalar Grafana

Actualiza la lista de paquetes y luego instala Grafana.

```bash

sudo apt-get update
sudo apt-get install -y grafana
```


### Paso 5: Iniciar y Habilitar el Servicio de Grafana

Inicia el servicio de Grafana y habilítalo para que se ejecute al inicio.

```bash
sudo systemctl start grafana-server
sudo systemctl enable grafana-server

```


### Paso 6: Verificar el Estado del Servicio

Verifica que el servicio de Grafana esté funcionando correctamente.

```bash
sudo systemctl status grafana-server
```





### Paso 7: Acceder a Grafana

Grafana debería estar corriendo en el puerto 3000. Puedes acceder a la interfaz web de Grafana abriendo un navegador y navegando a http://<tu-dirección-ip>:3000.

El nombre de usuario y la contraseña predeterminados son:

    Usuario: admin
    Contraseña: admin



### Paso 8: Configuración Inicial de Grafana

Después de iniciar sesión por primera vez, se te pedirá que cambies la contraseña de administrador.
Configuración Adicional
Añadir Prometheus como Fuente de Datos

    Acceder a la Configuración de Fuentes de Datos:
        En el panel lateral izquierdo, haz clic en el icono de engranaje (Configuración).
        Selecciona "Data Sources".

    Agregar una Nueva Fuente de Datos:
        Haz clic en "Add data source".
        Selecciona "Prometheus".

    Configurar la Fuente de Datos:
        En el campo URL, ingresa la dirección de tu servidor Prometheus (por ejemplo, http://localhost:9090).
        Haz clic en "Save & Test" para verificar la conexión.

##### Configuración de Alertas en Grafana

    Acceder a la Configuración de Alertas:
        En el panel lateral izquierdo, haz clic en el icono de campana (Alerting).
        Selecciona "Notification channels".

    Agregar un Nuevo Canal de Notificación:
        Haz clic en "Add channel".
        Configura el canal según tus necesidades (por ejemplo, correo electrónico, Slack, etc.).

### Archivos de configuracion

El dashboard utilizado para el modulo de Prometheus node_exporter, se encuentra en esta url [dashboard](https://github.com/Aleksei324/Proyecto-final-sistemas-operativos/tree/main/Archivos%20configuracion/Grafana%20dashboard)

Dicho documento debe importarse desde el menu de "dashboard" en grafana para obtener una vista de control del modulo instalado.
![imagen dashboard](https://raw.githubusercontent.com/Aleksei324/Proyecto-final-sistemas-operativos/main/Documentacion/media/dashboard_grafana.png)