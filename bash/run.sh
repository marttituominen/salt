#!/bin/bash
echo "Updating and installing salt and git"
sudo apt-get update
sudo apt-get -y install salt-minion salt-master git

echo "Configuring"
git config --global user.email "marttistuominen@gmail.com"
git config --global user.name "martti"

echo -e "master: localhost\nid: martti"|sudo tee /etc/salt/minion
sudo systemctl restart salt-minion.service
