#!/bin/bash
sudo killall -9 retroarch
sudo killall -9 kodi.bin
sudo killall emulationstation
(sleep 1)
echo "$(tput setaf 3)Checking environment and Updatiing TriPi...$(tput sgr 0)"
cd
sudo apt-get -y install git
sudo rm -rf TriPi
sudo rm -rf TriPi-Updater
sudo git clone https://github.com/pancakeykakes/TriPi-Updater.git
cd TriPi-Updater
sudo chmod +x update.sh
sudo ./update.sh
