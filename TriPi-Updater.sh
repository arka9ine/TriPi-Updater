#!/bin/bash
 cd
 sudo apt-get -y install git
 sudo rm -rf TriPi
 sudo rm -rf TriPi-Updater
 sudo git clone https://github.com/pancakeykakes/TriPi-Updater.git
 cd TriPi-Updater
 sudo chmod +x update.sh
 sudo ./update.sh
