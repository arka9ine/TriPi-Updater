#!/bin/bash
 cd
 sudo apt-get -y install git
 sudo rm -rf TriPi
 sudo rm -rf TriPi-Updater
 sudo git clone https://github.com/pancakeykakes/TriPi-updater.git
 cd TriPi-updater
 sudo chmod +x update.sh
 sudo ./update.sh
