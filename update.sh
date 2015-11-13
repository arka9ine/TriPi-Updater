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
echo -e "This is the TriPi updater script."
echo
echo -e "I am going to install updates to your TriPi environment.\n"
echo "This could potentially break things. If you have any issues, consult https://tripi.junaos.com or submit an issue to github."
echo "Not all updates are the same, so check the README.md file to find out if this is a stable release!"
#echo "WARNING!! This Update is replacing filename.file, which means you may need to reconfigure [value] after this is done."
echo -e "I will begin in 15 seconds...\n\n"

sleep 15

cd /home/pi/TriPi-Updater

echo "$(tput setaf 2)Checking xboxdrv... $(tput sgr 0)"

apt-get -y install xboxdrv
adduser pi root

echo -e "\n$(tput setaf 2)Installing new TriPi files..."
rm {/boot/config.txt,/etc/inittab,/etc/profile.d/emu.sh,/etc/rc.local,/home/pi/RetroPie/roms/ports/kodi.sh,/home/pi/RetroPie/roms/ports/Minecraft\ TriPi\ Port/sh,/home/pi/RetroPie/roms/ports/wireless\ controller\ hotfix.sh,/home/pi/.bashrc,/etc/splashscreen.list,/etc/init.d/asplashscreen,}
rm -rf /opt/retropie/supplementary/splashscreen/TriPi



cp config.txt /boot/
cp inittab /etc/
cp rc.local /etc/
cp emu.sh /etc/profile.d/
cp {TriPi-Updater.sh,kodi.sh} /home/pi/RetroPie/roms/ports
cp .bashrc /home/pi
cp splashscreen.list /etc/
cp asplashscreen /etc/init.d/
cp -r TriPi /opt/retropie/supplementary/splashscreen/

cd Wireless-Controller-Hotfix
cp wireless\ controller\ hotfix.sh /home/pi/RetroPie/roms/ports

echo "$(tput setaf 2)Checking Minecraft-Pi install and porting to TriPi... $(tput sgr 0)"
apt-get install -y minecraft-pi
sleep .2
cp Minecraft\ TriPi\ Port /home/pi/RetroPie/roms/ports

echo -e "\nSetting permissions for new files...$(tput sgr 0)"

sleep 1

chmod +x {/home/pi/RetroPie/roms/ports/kodi.sh,/home/pi/RetroPie/roms/ports/Minecraft\ TriPi\ Port,/home/pi/RetroPie/roms/ports/TriPi-Updater.sh,/home/pi/RetroPie/roms/ports/wireless\ controller\ hotfix.sh,/etc/profile.d/emu.sh,/etc/rc.local}
chmod a+x /etc/init.d/asplashscreen
insserv /etc/init.d/asplashscreen

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
