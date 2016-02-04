#!/bin/bash

echo "$(tput setaf 2)This will enable auto-updating of TriPi every night at midnight."
echo "You will lose customizations to certain configs such as Retroarch.cfg, and smb.conf, as they will be replaced with up-to-date defaults."
echo "If you do not want TriPi defaults, you probably should not do this."
echo "If you decide later you no longer want updates automatically, kill this script or just run thr Disable Auto-Update option."
echo "Starting in 20 seconds...$(tput sgr 0)"
sleep 20

sudo echo "/home/pi/RetroPie/roms/TriPi-Updater.sh" > /etc/cron.daily/TriPiUpdate
sudo chmod a+x /etc/cron.daily TriPiUpdate

echo "$(tput setaf 2)If you didn't see an error, auto updates are enabled!"
echo
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
