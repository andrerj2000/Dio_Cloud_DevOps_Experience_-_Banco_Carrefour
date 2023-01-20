#!/bin/bash

echo "@@@@ Iniciando instalation Dokcer @@@@"

sudo curl -fsSL https://get.docker.com | sudo bash
sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker vagrant

echo "@@@@ Instalando Docker-compose @@@@"
sudo apt-get install -y docker-compose
sudo docker-compose --version


