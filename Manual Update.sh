#!/bin/bash
clear
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\n"
echo
echo -e "$(tput setaf 2)Hi!\n"
echo -e "This is the TriPi updater script."
echo


sudo killall -9 retroarch
sudo killall -9 kodi.bin
sudo killall emulationstation
sleep 1
echo "$(tput setaf 2)Checking environment and Updatiing TriPi...$(tput sgr 0)"
cd
sudo apt-get -y install git
sudo rm -rf TriPi
sudo rm -rf TriPi-Updater
sudo git clone https://github.com/pancakeykakes/TriPi-Updater.git
cd TriPi-Updater
sudo chmod +x update.sh
sudo ./update.sh
