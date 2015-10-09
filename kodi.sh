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
sudo rmmod xpad
(sleep 1)
xboxdrv --detach-kernel-driver --wid 0 --led 2 --mimic-xpad --trigger-as-button --autofire LT=75 --autofire RT=75 --autofire DD=150 --autofire DU=150 --ui-buttonmap LT=KEY_F9 --ui-buttonmap RT=KEY_F10 --ui-buttonmap DD=KEY_DOWN --ui-buttonmap DU=KEY_UP --ui-buttonmap DL=KEY_LEFT --ui-buttonmap DR=KEY_RIGHT --ui-buttonmap A=KEY_ENTER --ui-buttonmap B=KEY_BACKSPACE --ui-buttonmap RB=exec:/home/pi/emu.sh --ui-buttonmap LB=exec:/home/pi/kodi.sh --ui-buttonmap GUIDE=exec:/home/pi/killswitch.sh --deadzone 80% --quiet --silent & sleep 1
(sleep 1)
fbset -depth 8 && fbset -depth 16
(sleep 1)
echo "$(tput setaf 2)Ready."
(sleep 1)
echo "Launching Kodi. Better than Netflix and chill!$(tput sgr 0)"
(sleep 1)
startkodi

