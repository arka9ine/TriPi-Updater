clear 

echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \\ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo
echo
echo "$(tput setaf 2)Hi!"
echo "This is the TriPi updater script."
echo
echo "I am going to install updates to your TriPi environment."
echo
echo "This could potentially break things. If you have any issues, consult tripi.junaos.com or submit an issue to github."
echo "Not all updates are the same, so check the README.md file to find out if this is a stable release!"
echo
echo "!!!!WARNING!!!! This Update is replacing RETROARCH.CFG, which means you may need to reconfigure any custom settings after this is done!"
echo
echo "I will begin in 20 seconds..."

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
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo
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
echo  "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo
echo
echo  "$(tput setaf 2)Updating System...$(tput sgr 0)"
sleep 2

rm -rf /home/pi/RetroPie/roms/TriPi
mkdir /home/pi/RetroPie/roms/TriPi
#mkdir /etc/emulationstation/themes/simple-dark/TriPi

cd /home/pi/TriPi-Updater/

cp Manual\ Update.sh /home/pi/RetroPie/roms/TriPi
cp -r TriPi /opt/retropie/supplementary/splashscreen/

cd /home/pi/TriPi-Updater/System

cp config.txt /boot/
cp inittab /etc/
cp rc.local /etc/
cp emu.sh /etc/profile.d/
cp .bashrc /home/pi
cp splashscreen.list /etc/
cp asplashscreen /etc/init.d/
cp es_systems.cfg /etc/emulationstation
cp retroarch.cfg /opt/retropie/configs/all/
cp killmc.sh /home/pi/

cd /home/pi/TriPi-Updater/Ports/

cp kodi.sh /home/pi/RetroPie/roms/ports
cp Minecraft\ TriPi\ Port.sh /home/pi/RetroPie/roms/ports
cd /home/pi/TriPi-Updater/TriPi-Menu/

cp theme.xml /etc/emulationstation/themes/simple-dark/TriPi
cp -r art /etc/emulationstation/themes/simple-dark/TriPi

cd /home/pi/TriPi-Updater/Limelight/

cp Install\ Limelight.sh /home/pi/RetroPie/roms/TriPi

sleep 5

clear
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \\ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo  "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo
echo
echo  "$(tput setaf 2)Setting permissions for new files...$(tput sgr 0)"
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
echo  "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo
echo
echo  "$(tput setaf 2)Done!" 

echo "I will reboot your Raspberry Pi in 10 seconds. ENJOY! -Pancakeykakes$(tput sgr 0)"


SECONDS_TILL_REBOOT=10

while [[ ${SECONDS_TILL_REBOOT} -gt 0 ]]; do
  sleep 1
  SECONDS_TILL_REBOOT=$[${SECONDS_TILL_REBOOT} -1]
  if [[ $((${SECONDS_TILL_REBOOT} % 5)) q 0 ]]; then
    echo "${SECONDS_TILL_REBOOT} seconds until reboot"
  fi
done

sudo reboot
