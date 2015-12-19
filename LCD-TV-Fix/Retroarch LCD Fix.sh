#!/bin/bash
echo -e "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
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
echo
echo "$(tput setaf 2)Applying retroarch fix for 120Hz LCD TV displays..."
echo "This WILL overwrite your current retroarch.cfg file, so if you have made any modifications beyond the stock TriPi settings, you will need to re-configure them."
echo
echo "Copying file...$(tput sgr 0)"
echo
sudo rm /opt/retropie/configs/all/retroarch.cfg
sudo cp /home/pi/TriPi-Updater/LCD-TV-Fix/retroarch.cfg /opt/retropie/configs/all


sleep .5

echo "$(tput setaf 2)Done. Rebooting in 10 seconds...$(tput sgr 0)"

SECONDS_TILL_REBOOT=10

while [[ ${SECONDS_TILL_REBOOT} -gt 0 ]]; do
  sleep 1
  SECONDS_TILL_REBOOT=$[${SECONDS_TILL_REBOOT} -1]
  if [[ $((${SECONDS_TILL_REBOOT} % 5)) -eq 0 ]]; then
    echo "${SECONDS_TILL_REBOOT} seconds until reboot"
  fi
done

sudo reboot
