#!/bin/bash

echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo

echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                 _______     _  _____  _   ___      ___  "
echo "                |__   __|   (_)|  __ \(_) |__ \    / _ \ "
echo "                   | | _ __  _ | |__) |_     ) |  | | | |"
echo "                   | || '__|| ||  ___/| |   / /   | | | |"
echo "                   | || |   | || |    | |  / /_  _| |_| |"
echo "                   |_||_|   |_||_|    |_| |____|(_)\___/ "
echo
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo "$(tput setaf 2;tput bold)Hi!"
echo
echo "This is the TriPi script for RASPBIAN WHEEZY. If you are on Raspbian Jessie, please press Control-Z and quit now. Jessie is not supported."
echo "Breakups are hard."
echo 
echo "I am going to install Xboxdrv, and the necessary scripts to bind the controller for navigation within Kodi and Emulationstation."
echo
echo 

(sleep 10)

cd /home/pi/TriPi-master
echo "$(tput setaf 2;tput bold)Installing xboxdrv... $(tput sgr 0)"
(sleep 1)

apt-get -y install xboxdrv
(sleep 1)
adduser pi root
(sleep 1)

echo "$(tput setaf 2;tput bold)Configuring your system to automagically log you in upon completion of the boot process...$(tput sgr 0)"
(sleep 1)

cp inittab /etc/

(sleep 1)

echo
echo "$(tput setaf 2;tput bold)Enabling Xbox360 Controller support upon each login..."
(sleep 1)

cp .bashrc /home/pi/

(sleep 1)

echo
echo "Installing scripts to bind LB, RB, and Guide buttons..."
(sleep 1)

cp kodi.sh /home/pi
(sleep 1)
cp emu.sh /home/pi
(sleep 1)
cp killswitch.sh /home/pi

(sleep 1)

echo
echo "Setting permissions for new scripts...$(tput sgr 0)"
(sleep 1)

sudo chmod 777 /home/pi/kodi.sh
(sleep 1)
sudo chmod 777 /home/pi/emu.sh
(sleep 1)
sudo chmod 777 /home/pi/killswitch.sh

(sleep 1)

echo 
echo "$(tput setaf 2;tput bold)Done!"
echo
echo "$(tput setaf 3;tput bold)Press LB to launch Kodi. It will make sure Kodi isn't already running, and kill Emulationstation and Retroarch for you."
echo "Press RB to launch Emulationstation. It will make sure Emulationstation isn't already running, and kill Kodi for you."
echo "Press Xbox Guide button to Return to the bash terminal."
echo
echo 
echo
echo "While in the Kodi environment, use the D-pad to navigate, LT and RT to adjust volume, A button to make a selection, and B button to go back."
echo "Some of the more sophisticated controls and commands for Kodi may require a keyboard."
(sleep 5)
echo
echo "$(tput setaf 2;tput bold)I will reboot your Raspberry Pi in 15 seconds. ENJOY! -Pancakeykakes$(tput sgr 0)"
echo
(sleep 15)
reboot
