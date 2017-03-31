#!/usr/bin/env bash

sudo apt-get install -y wine

sudo apt-get install -y winetricks

sudo apt-get install -y playonlinux

sudo dpkg --add-architecture i386

sudo apt-get update

#sudo apt-get install wine-bin:i386

echo "[playonlinux instalado]"
