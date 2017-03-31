#!/usr/bin/env bash

sudo apt-get update

sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'

sudo apt-get update

apt-cache policy docker-engine

sudo apt-get install -y docker-engine

sudo systemctl status docker

sudo usermod -aG docker $(whoami)

sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/1.11.2/docker-compose-$(uname -s)-$(uname -m)"

sudo chmod +x /usr/local/bin/docker-compose

docker-compose -v

echo "[Docker instalado]"
