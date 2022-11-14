#!/bin/bash

echo "#### Acessando o diretorio Raiz ####"
cd /

echo "#### Criando diretorio compose ####"
sudo mkdir compose
sudo mkdir compose/app

echo "#### Copiando Docker-compose.yml para o diretorio compose ####"
sudo cp /vagrant/Docker-compose.yml /compose
sudo cp /vagrant/index.html /compose/app

echo "#### Iniciando docker swarm ####"
sudo docker swarm init --advertise-addr=10.0.0.210
#sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh

echo "#### Acessando diretorio compose ####"

cd compose

echo "#### Executando docker-compose ####"

docker-compose -f Docker-compose.yml up -d


