#!/bin/bash

sudo bash 02_docker_remove_containers.sh
sudo bash 03_docker_create_containers.sh
sudo bash 04_docker_start_containers.sh
sudo bash 05_docker_patch_containers.sh

sudo apt-get update 
sudo apt install python3-venv -y

screen -m -d sudo bash 06_serve_homepage.sh
screen -m -d sudo bash 07_serve_reset.sh
