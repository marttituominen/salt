#!/bin/bash

echo "Updating and installing and git"
sudo apt-get update
sudo apt-get -y install git

echo "Configuring"
read -p "Email: " gitemail
read -p "Name: " gitname
git config --global user.email "$gitemail"
git config --global user.name "$gitname"
git config --global credential.helper "cache -timeout=3600"
