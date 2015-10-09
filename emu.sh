#!/bin/bash
echo
echo "$(tput setaf 2)Cleaning up...$(tput sgr 0)"
(sleep 1)
sudo killall emulationstation
(sleep 1)
sudo killall -9 retroarch
(sleep 1)
sudo killall -9 kodi.bin
(sleep 1)
sudo killall xboxdrv
(sleep 1)
xboxdrv --trigger-as-button --wid 0 --led 3 --detach-kernel-driver --ui-buttonmap RB=exec:/home/pi/emu.sh --ui-buttonmap LB=exec:/home/pi/kodi.sh --ui-buttonmap GUIDE=exec:/home/pi/killswitch.sh --quiet --silent & sleep 1
(sleep 1)
fbset -depth 8 && fbset -depth 16
(sleep 1)
echo "$(tput setaf 2)Ready."
(sleep 1)
echo "Launching Emulationstation. Game on.$(tput sgr 0)"
(sleep 1)
/opt/retropie/supplementary/emulationstation/emulationstation
