clear 

echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \\ (_)  "
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
echo -e "I am going to install updates to your TriPi environment.\n"
echo "This could potentially break things. If you have any issues, consult https://tripi.junaos.com or submit an issue to github."
echo "Not all updates are the same, so check the README.md file to find out if this is a stable release!"
echo
echo "!!!!WARNING!!!! This Update is replacing RETROARCH.CFG, which means you may need to reconfigure any custom settings after this is done!"
echo -e "I will begin in 20 seconds...\n\n"

sleep 20

cd /home/pi/TriPi-Updater

clear
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \\ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\n"
echo
echo "$(tput setaf 2)Checking xboxdrv... $(tput sgr 0)"
sleep 2

apt-get -y install xboxdrv
adduser pi root

clear
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \\ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\\n"
echo
echo -e "\n$(tput setaf 2)Removing old files and creating required directories...$(tput sgr 0)"
sleep 2

mkdir /home/pi/RetroPie/roms/TriPi
#mkdir /etc/emulationstation/themes/simple-dark/TriPi

cp /home/pi/TriPi-Updater/System/config.txt /boot/
cp /home/pi/TriPi-Updater/System/inittab /etc/
cp /home/pi/TriPi-Updater/System/rc.local /etc/
cp /home/pi/TriPi-Updater/System/emu.sh /etc/profile.d/
cp /home/pi/TriPi-Updater/System/.bashrc /home/pi

cp /home/pi/TiPi-Updater/System/splashscreen.list /etc/
cp /home/pi/TiPi-Updater/System/asplashscreen /etc/init.d/
cp -r /home/pi/TiPi-Updater/System/TriPi /opt/retropie/supplementary/splashscreen/
cp /home/pi/TriPi-Updater/System/.bashrc 
cp /home/pi/TriPi-Updater/System/es_systems.cfg /etc/emulationstation
cp /home/pi/TriPi-Updater/System/retroarch.cfg /opt/retropie/configs/all/



cp /home/pi/TriPi-Updater/Ports/kodi.sh /home/pi/RetroPie/roms/ports
cp /home/pi/TriPi-Updater/Ports/killmc.sh /home/pi/

cp Manual\ Update.sh /home/pi/RetroPie/roms/TriPi

cp /home/pi/TriPi-Updater/TriPi-Menu/theme.xml /etc/emulationstation/themes/simple-dark/TriPi
cp -r /home/pi/TriPi-Updater/TriPi-Menu/art /etc/emulationstation/themes/simple-dark/TriPi

cp /home/pi/TriPi-Updater/Limelight/Install\ Limelight.sh /home/pi/RetroPie/roms/TriPi

clear
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \\ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\n"
echo
echo -e "\n$(tput setaf 2)Setting Controller Keybinds for Minecraft-Pi... $(tput sgr 0)"
sleep 2

cp /home/pi/TriPi-Updater/Ports/Minecraft\ TriPi\ Port.sh /home/pi/RetroPie/roms/ports

clear
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \\ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\n"
echo
echo -e "\n$(tput setaf 2)Setting permissions for new files...$(tput sgr 0)"
sleep 2


chmod +x {/home/pi/RetroPie/roms/TriPi/Install\ Limelight.sh,/home/pi/killmc.sh,/home/pi/RetroPie/roms/ports/kodi.sh,/home/pi/RetroPie/roms/ports/Minecraft\ TriPi\ Port.sh,/home/pi/RetroPie/roms/TriPi/Manual\ Update.sh,/etc/profile.d/emu.sh,/etc/rc.local\}
chmod a+x /etc/init.d/asplashscreen
insserv /etc/init.d/asplashscreen
chmod +x /etc/emulationstation/es_systems.cfg
sudo chown -R pi:pi /home/pi/RetroPie/roms/


clear
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \\ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\n"
echo
echo -e "\n$(tput setaf 2)Done!\n" 

echo "I will reboot your Raspberry Pi in 10 seconds. ENJOY! -Pancakeykakes$(tput sgr 0)"

SECONDS_TILL_REBOOT=10

SECONDS_TILL_REBOOT=10
while [[ ${SECONDS_TILL_REBOOT} -gt 0 ]]; do
  sleep 1
  SECONDS_TILL_REBOOT=$[${SECONDS_TILL_REBOOT} -1]
  if [[ $((${SECONDS_TILL_REBOOT} % 5)) -eq 0 ]]; then
    echo "${SECONDS_TILL_REBOOT} seconds until reboot"
  fi
done
sudo reboot

}
