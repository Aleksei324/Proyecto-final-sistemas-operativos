#!/bin/bash

echo instalando grafana

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install -y apt-transport-https software-properties-common wget

echo agregando clave y repositorio de grafana

wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
sudo add-apt-repository "deb https://packages.grafana.com/oss/deb stable main"

sudo apt-get update
sudo apt-get install -y grafana

sudo systemctl start grafana-server
sudo systemctl enable grafana-server

sudo systemctl status grafana-server