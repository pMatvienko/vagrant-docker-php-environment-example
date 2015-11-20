#!/bin/bash
#
sudo apt-get update
sudo apt-get -y upgrade

echo "[Info] Installing mc"
sudo apt-get -y install mc

echo "[Info] Installing htop"
sudo apt-get -y install htop

echo "[Info] Installing docker"
sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-trusty main > /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get -y install docker-engine


sudo apt-get -y install curl
sudo apt-get -y install python-pip

sudo apt-get -f -y install

echo "[Info] Installing docker-compose"
sudo pip install -U docker-compose
sudo chmod +x /usr/local/bin/docker-compose

apt-get -y install mysql-client


