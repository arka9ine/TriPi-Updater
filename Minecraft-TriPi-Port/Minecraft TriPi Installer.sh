#!/bin/bash

echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\n"

echo -e "$(tput setaf 2)Hi!\n"
echo -e "I am going to install Minecraft-Pi if it is not already installed, and then bind your Xbox360 controller for use in minecraft for TriPi!\n"
echo "Afterwards, we will reboot your RPi, and you should see an option to launch Minecraft in the Ports section of Emulationstation/RetroPie."
echo "I will begin in 10 seconds..."
sleep 10

echo "Checking Minecraft-Pi install...$(tput sgr 0)"
sudo apt-get install minecraft-pi
sleep .2

echo "$(tput setaf 2)Binding Minecraft-Pi to your Xbox360 Controller...$(tput sgr 0)"
sudo rm /home/pi/RetroPie/roms/ports/Minecraft\ TriPi\ Port
sudo cp Minecraft\ TriPi\ Port /home/pi/RetroPie/roms/ports
sudo chmod +x /home/pi/RetroPie/roms/ports/Minecraft\ TriPi\ Port

echo -e "\n$(tput setaf 2)Done!\n" 

echo "I will reboot your Raspberry Pi in 10 seconds. ENJOY! -Pancakeykakes$(tput sgr 0)"

SECONDS_TILL_REBOOT=10

while [[ ${SECONDS_TILL_REBOOT} -gt 0 ]]; do
  sleep 1
  SECONDS_TILL_REBOOT=$[${SECONDS_TILL_REBOOT} -1]
  if [[ $((${SECONDS_TILL_REBOOT} % 5)) -eq 0 ]]; then
    echo "${SECONDS_TILL_REBOOT} seconds until reboot"
  fi
done

reboot
