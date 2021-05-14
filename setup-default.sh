#!/bin/sh
sudo apt update
sudo apt -y upgrade
sudo apt install make
sudo apt install -y ansible
sudo cp ./docker/ansible/hosts /etc/ansible/hosts