#!/bin/bash

# Same exact goal, but condensed down to three lines; makes the script more readable. 45 lines in 3.
for i in `seq 1 45`; do
  echo 
done

echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                 _______     _  _____  _   ___      ___  "
echo "                |__   __|   (_)|  __ \(_) |__ \    / _ \ "
echo "                   | | _ __  _ | |__) |_     ) |  | | | |"
echo "                   | || '__|| ||  ___/| |   / /   | | | |"
echo "                   | || |   | || |    | |  / /_  _| |_| |"
echo "                   |_||_|   |_||_|    |_| |____|(_)\___/ "
echo
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"

# Or even better than on line 3...echo 17 lines with one.
echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

echo -e "$(tput setaf 2;tput bold)Hi!\n"
# echo
echo -e "This is the TriPi script for RASPBIAN WHEEZY. If you are on Raspbian Jessie, please press Control-Z and quit now. Jessie is not supported."
echo -e "Breakups are hard.\n"
# echo 
echo -e "I am going to install Xboxdrv, and the necessary scripts to bind the controller for navigation within Kodi and Emulationstation.\n\n"
# echo
# echo 

sleep 10

cd /home/pi/TriPi-master
echo "$(tput setaf 2;tput bold)Installing xboxdrv... $(tput sgr 0)"

apt-get -y install xboxdrv
adduser pi root

echo "$(tput setaf 2;tput bold)Configuring your system to automagically log you in upon completion of the boot process...$(tput sgr 0)"

cp inittab /etc/

# See Line 18
# echo
echo -e "\n$(tput setaf 2;tput bold)Enabling Xbox360 Controller support upon each login..."

cp .bashrc /home/pi/

# echo
echo -e "\nInstalling scripts to bind LB, RB, and Guide buttons..."

# Bash expansion is useful here. 
# cp kodi.sh /home/pi
# cp emu.sh /home/pi
# cp killswitch.sh /home/pi

cp {kodi.sh,emu.sh,killswitch.sh} /home/pi

echo -e "\nSetting permissions for new scripts...$(tput sgr 0)"
(sleep 1)

# sudo chmod 777 /home/pi/kodi.sh
# (sleep 1)
# sudo chmod 777 /home/pi/emu.sh
# (sleep 1)
# sudo chmod 777 /home/pi/killswitch.sh

# This might be cleaner
sudo chmod 777 /home/pi/*.sh
# If you are worried about other .sh files, you can also use Bash expansion (see line 56)
# sudo chmod 777 /home/pi/{kodi.sh,emu.sh,killswitch.sh}

# echo 
echo -e "\n$(tput setaf 2;tput bold)Done!\n" # \n at the end to replace the next echo...
# echo
echo "$(tput setaf 3;tput bold)Press LB to launch Kodi. It will make sure Kodi isn't already running, and kill Emulationstation and Retroarch for you."
echo "Press RB to launch Emulationstation. It will make sure Emulationstation isn't already running, and kill Kodi for you."
echo -e "Press Xbox Guide button to Return to the bash terminal.\n\n\n" # Replace the next 3 echos as well...
# echo
# echo 
# echo
echo "While in the Kodi environment, use the D-pad to navigate, LT and RT to adjust volume, A button to make a selection, and B button to go back."
echo "Some of the more sophisticated controls and commands for Kodi may require a keyboard."

# Don't need to run sleep in a subshell.
# (sleep 5)
sleep 5

echo "$(tput setaf 2;tput bold)I will reboot your Raspberry Pi in 15 seconds. ENJOY! -Pancakeykakes$(tput sgr 0)"

# Sleeping for 15 seconds is cool, but check this out.
# sleep 15

SECONDS_TILL_REBOOT=15

while [[ ${SECONDS_TILL_REBOOT} -gt 0 ]]; do
  sleep 1
  SECONDS_TILL_REBOOT=$[${SECONDS_TILL_REBOOT} -1]
  if [[ $((${SECONDS_TILL_REBOOT} % 5)) -eq 0 ]]; then
    echo "${SECONDS_TILL_REBOOT} seconds until reboot"
  fi
done

reboot
