#!/bin/bash
echo
echo
echo "$(tput setaf 2)Force-enabling wireless controller support for RETROARCH-BASED emulators."
echo "This WILL overwrite your current retroarch.cfg file, so if you have made any modifications beyond the stock TriPi settings, you will need to re-configure them."
echo
echo "Copying file...$(tput sgr 0)"
echo
sudo rm /opt/retropie/configs/all/retroarch.cfg
sudo cp /home/pi/TriPi-Updater/retroarch.cfg /opt/retropie/configs/all/

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
