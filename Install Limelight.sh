#!/bin/bash

echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"

echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \ (_)  "
echo "                          | | _ __  _ | |__) | _   "
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\n$(tput sgr 0)"

echo
echo
echo
echo "$(tput setaf 2)Installing java8...$(tput sgr 0)"

sleep 5

sudo apt-get update && sudo apt-get -y install oracle-java8-jdk && sudo apt-get -y install input-utils

echo
echo "$(tput setaf 2)Creating folder for install...$(tput sgr 0)"

sudo rm -rf /home/pi/limelight
sudo rm -rf /home/pi/RetroPie/roms/limelight
sleep 1
sudo mkdir /home/pi/limelight
sudo mkdir /home/pi/RetroPie/roms/limelight

echo
echo "$(tput setaf 2)Installing Limelight config file to TriPi Menu....$(tput sgr 0)"

sudo cp /home/pi/TriPi-Updater/Configure\ Limelight.sh /home/pi/RetroPie/roms/limelight/ 

echo
echo "$(tput setaf 2)Downloading Limelight...$(tput sgr 0)"

cd /home/pi/limelight

sudo wget https://github.com/irtimmer/limelight-embedded/releases/download/v1.2.2/libopus.so

sudo wget https://github.com/irtimmer/limelight-embedded/releases/download/v1.2.2/limelight.jar

clear

echo "$(tput setaf 2)Installing limelight menu to Emulation Station...(tput sgr 0)"
sudo sed -i -e 's|</systemList>|<system>\n<name>limelight</name>\n<fullname>Limelight</fullname>\n<path>~/RetroPie/roms/limelight</path>\n<extension>.sh .SH</extension>\n<command>bash %ROM%</command>\n<platform>limelight</platform>\n<theme>limelight</theme>\n</system>\n</systemList>|g' /etc/emulationstation/es_systems.cfg

sudo rm -rf /etc/emulationstation/themes/simple-dark/limelight
sudo rm -rf /etc/emulationstation/themes/simple-dark/limelight/art/
sudo mkdir /etc/emulationstation/themes/simple-dark/limelight
sudo mkdir /etc/emulationstation/themes/simple-dark/limelight/art/

cd /home/pi/limelight
sudo wget https://github.com/stsfin/RetropieLimelightInstaller/releases/download/1.3.1/theme.xml
sudo wget https://github.com/stsfin/RetropieLimelightInstaller/releases/download/1.3.1/limelight.png
sudo wget https://github.com/stsfin/RetropieLimelightInstaller/releases/download/1.3.1/limelight_art.png
sudo wget https://github.com/stsfin/RetropieLimelightInstaller/releases/download/1.3.1/limelight_art_blur.png

sudo cp theme.xml /etc/emulationstation/themes/simple-dark/limelight
sudo cp limelight.png /etc/emulationstation/themes/simiple-dark/limelight/art
sudo cp limelight_art.png /etc/emulationstation/themes/simiple-dark/limelight/art
sudo cp limelight_art_blur.png /etc/emulationstation/themes/simiple-dark/limelight/art

echo "$(tput setaf 2)Installing additional Limelight scripts...$(tput sgr 0)"

cd /home/pi/

sudo echo "#!/bin/bash" > limelight720p60fps.sh
sudo echo "cd /home/pi/limelight/ && java -jar limelight.jar stream -720 -60fps "$ip" -app Steam -mapping mapfile.map" >>  limelight720p60fps.sh

sudo echo "#!/bin/bash" > limelight1080p30fps.sh
sudo echo "cd /home/pi/limelight/ && java -jar limelight.jar stream -1080 -30fps "$ip" -app Steam -mapping mapfile.map" >>  limelight1080p30fps.sh

sudo echo "#!/bin/bash" > limelight1080p60fps.sh
sudo echo "cd /home/pi/limelight/ && java -jar limelight.jar stream -1080 -60fps "$ip" -app Steam -mapping mapfile.map" >>  limelight1080p60fps.sh

sudo mv limelight720p60fps.sh /home/pi/RetroPie/roms/
sudo mv limelight1080p30fps.sh /home/pi/RetroPie/roms/
sudo mv limelight1080p60fps.sh /home/pi/RetroPie/roms/

sudo chmod +x /home/pi/RetroPie/roms/limelight720p60fps.sh
sudo chmod +x /home/pi/RetroPie/roms/limelight1080p30fps.sh
sudo chmod +x /home/pi/RetroPie/roms/limelight1080p60fps.sh
sudo chmod +x /home/pi/RetroPie/roms/Configure\ Limelight.sh

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

sudo reboot
