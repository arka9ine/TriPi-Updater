#!/bin/bash

sudo killall xboxdrv
        sleep .2
         xboxdrv \
         --ui-axismap x2=REL_X:10,y2=REL_Y:10,x1=KEY_LEFT:KEY_RIGHT,y1=KEY_UP:KEY_DOWN,x1=KEY_A:KEY_D,y1=KEY_W:KEY_S \
         --ui-buttonmap LT=BTN_RIGHT,RT=BTN_LEFT,y=KEY_E \
         --ui-buttonmap A=KEY_SPACE --ui-buttonmap B=KEY_LEFTSHIFT --ui-buttonmap Y=KEY_E --ui-buttonmap BACK=KEY_ESC --ui-buttonmap START=KEY_ENTER --ui-buttonmap LB=REL_WHEEL:1:150 --ui-buttonmap RB=REL_WHEEL:-1:150 --ui-buttonmap GUIDE=exec:/home/pi/killmc.sh --ui-buttonmap DD=KEY_DOWN --ui-buttonmap DU=KEY_UP --ui-buttonmap DL=KEY_LEFT --ui-buttonmap DR=KEY_RIGHT --deadzone 4000 --wid 0 --led 4 --quiet --silent & sleep 1
         sleep .2

/opt/retropie/supplementary/runcommand/runcommand.sh 0 "xinit \"/opt/retropie/ports/minecraft/Minecraft.sh\"" minecraft

wait minecraft-pi

sudo killall xboxdrv
sleep .2
xboxdrv --trigger-as-button --wid 0 --led 2 --detach-kernel-driver --quiet --silent & sleep 1
sleep .2
