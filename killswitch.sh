#!/bin/bash
echo
echo "$(tput setaf 2)Cleaning Up...$(tput sgr 0)"
(sleep 1)
sudo killall emulationstation
(sleep 1)
sudo killall -9 retroarch
(sleep 1)
sudo killall -9 kodi.bin
(sleep 1)
sudo killall xboxdrv
(sleep 1)
xboxdrv --trigger-as-button --wid 0 --led 10 --detach-kernel-driver --ui-buttonmap RB=exec:/home/pi/emu.sh --ui-buttonmap LB=exec:/home/pi/kodi.sh --ui-buttonmap GUIDE=exec:/home/pi/killswitch.sh --deadzone 4000 --quiet --silent & sleep 1
(sleep 1)
fbset -depth 8 && fbset -depth 16
(sleep 1)
echo "$(tput setaf 2)Ready.$(tput sgr 0)"
