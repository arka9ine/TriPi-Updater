#!/bin/bash

sudo killall xboxdrv
        sleep .2
        xboxdrv --detach-kernel-driver --wid 0 --led 4 --mimic-xpad --trigger-as-axis --autofire LT=75 --autofire RT=75 --autofire DD=150 --autofire DU=150 --autofire DL=150 --autofire DR=150 -m --mouse --axismap "-y2=y2,-trigger=trigger" --ui-axismap "x1=REL_X:15:20,y1=REL_Y:15:20,y2=REL_WHEEL:5:100,x2=REL_HWHEEL:5:100,trigger=REL_WHEEL:5:100" --ui-buttonmap DD=KEY_S --ui-buttonmap DU=KEY_W --ui-buttonmap DL=KEY_A --ui-buttonmap DR=KEY_D --ui-buttonmap A=KEY_SPACE --ui-buttonmap B=KEY_TAB --ui-buttonmap X=KEY_E --ui-buttonmap START=KEY_esc --ui-buttonmap RB=KEY_2 --ui-buttonmap LB=KEY_1 --deadzone 80% --quiet --silent & sleep 1
        sleep .2
/opt/retropie/supplementary/runcommand/runcommand.sh 0 "minecraft-pi"

wait minecraft-pi.bin

sudo killall xboxdrv
sleep .2
xboxdrv --trigger-as-button --wid 0 --led 2 --detach-kernel-driver --quiet --silent & sleep 1
sleep .2
