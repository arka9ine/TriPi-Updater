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
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\n$(tput sgr 0)"
echo
echo "$(tput setaf 2)Installing java8...$(tput sgr 0)"

sleep 2

sudo apt-get update && sudo apt-get -y install oracle-java8-jdk && sudo apt-get -y install input-utils

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
echo "$(tput setaf 2)Making room for everything...$(tput sgr 0)"
sleep 2

sudo rm -rf /home/pi/limelight
sudo rm -rf /home/pi/RetroPie/roms/limelight
sudo rm -rf /etc/emulationstation/themes/simple-dark/limelight
sudo rm -rf /etc/emulationstation/themes/simple-dark/limelight/art/
sudo mkdir /etc/emulationstation/themes/simple-dark/limelight
sudo mkdir /etc/emulationstation/themes/simple-dark/limelight/art/
sudo mkdir /home/pi/limelight
sudo mkdir /home/pi/RetroPie/roms/limelight


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
echo "$(tput setaf 2)Installing Limelight config file to TriPi Menu....$(tput sgr 0)"
sleep 2

sudo cp /home/pi/TriPi-Updater/Limelight/Configure\ Limelight.sh /home/pi/RetroPie/roms/limelight/ 

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
echo "$(tput setaf 2)Downloading Limelight...$(tput sgr 0)"
sleep 2

cd /home/pi/limelight

sudo wget https://github.com/irtimmer/limelight-embedded/releases/download/v1.2.2/libopus.so

sudo wget https://github.com/irtimmer/limelight-embedded/releases/download/v1.2.2/limelight.jar

clear
echo "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000"
echo "$(tput setaf 2)                        _______     _  _____   _"
echo "                       |__   __|   (_)|  __ \ (_)  "
echo "                          | | _ __  _ | |__) | _   
echo "                          | || '__|| ||  ___/ | |  "
echo "                          | || |   | || |     | |  "
echo "                          |_||_|   |_||_|     |_|  "
echo
echo -e "$(tput setaf 1)01010100 01110010 01101001 01010000 01101001 00110010 00101110 00110000\n"
echo
echo "$(tput setaf 2)Installing limelight menu to Emulation Station...$(tput sgr 0)"
sleep 2

sudo sed -i -e 's|</systemList>|<system>\n<name>limelight</name>\n<fullname>Limelight</fullname>\n<path>~/RetroPie/roms/limelight</path>\n<extension>.sh .SH</extension>\n<command>bash %ROM%</command>\n<platform>limelight</platform>\n<theme>limelight</theme>\n</system>\n</systemList>|g' /etc/emulationstation/es_systems.cfg

cd /home/pi/limelight
sudo wget https://github.com/stsfin/RetropieLimelightInstaller/releases/download/1.3.1/limelight.png
sudo wget https://github.com/stsfin/RetropieLimelightInstaller/releases/download/1.3.1/limelight_art.png
sudo wget https://github.com/stsfin/RetropieLimelightInstaller/releases/download/1.3.1/limelight_art_blur.png

sleep 1

sudo cp /home/pi/TriPi-Updater/Limelight/theme.xml /etc/emulationstation/themes/simple-dark/limelight
sudo cp /home/pi/limelight/limelight.png /etc/emulationstation/themes/simple-dark/limelight/art
sudo cp /home/pi/limelight/limelight_art.png /etc/emulationstation/themes/simple-dark/limelight/art
sudo cp /home/pi/limelight/limelight_art_blur.png /etc/emulationstation/themes/simple-dark/limelight/art

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
echo "$(tput setaf 2)Installing additional Limelight scripts...$(tput sgr 0)"
sleep 2

cd /home/pi/

sudo echo "#!/bin/bash" > limelight720p60fps.sh
sudo echo "cd /home/pi/limelight/ && java -jar limelight.jar stream -720 -60fps "$ip" -app Steam -mapping mapfile.map" >>  limelight720p60fps.sh

sudo echo "#!/bin/bash" > limelight1080p30fps.sh
sudo echo "cd /home/pi/limelight/ && java -jar limelight.jar stream -1080 -30fps "$ip" -app Steam -mapping mapfile.map" >>  limelight1080p30fps.sh

sudo echo "#!/bin/bash" > limelight1080p60fps.sh
sudo echo "cd /home/pi/limelight/ && java -jar limelight.jar stream -1080 -60fps "$ip" -app Steam -mapping mapfile.map" >>  limelight1080p60fps.sh

sudo mv limelight720p60fps.sh /home/pi/RetroPie/roms/limelight/
sudo mv limelight1080p30fps.sh /home/pi/RetroPie/roms/limelight/
sudo mv limelight1080p60fps.sh /home/pi/RetroPie/roms/limelight/

sudo chmod +x /home/pi/RetroPie/roms/limelight/limelight720p60fps.sh
sudo chmod +x /home/pi/RetroPie/roms/limelight/limelight1080p30fps.sh
sudo chmod +x /home/pi/RetroPie/roms/limelight/limelight1080p60fps.sh
sudo chmod +x /home/pi/RetroPie/roms/limelight/Configure\ Limelight.sh

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
