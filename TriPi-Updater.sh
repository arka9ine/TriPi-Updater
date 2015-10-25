#!/bin/bash
 cd
 sudo apt-get -y install git
 sudo rm -rf TriPi
 sudo git clone https://github.com/pancakeykakes/TriPi.git
 cd TriPi
 sudo chmod +x update.sh
 sudo ./update.sh
