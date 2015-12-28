while pgrep omxplayer &>/dev/null;
    do sleep 1;
done

[ "`tty`" = "/dev/tty1" ] && startkodi 

sudo chmod +x /dev/uinput

xboxdrv --detach-kernel-driver --wid 0 --led 3 --mimic-xpad --trigger-as-button --autofire LT=75 --autofire RT=75 --autofire DD=150 --autofire DU=150 --autofire DL=150 --autofire DR=150 --ui-buttonmap LT=KEY_F9 --ui-buttonmap RT=KEY_F10 --ui-buttonmap DD=KEY_DOWN --ui-buttonmap DU=KEY_UP --ui-buttonmap DL=KEY_LEFT --ui-buttonmap DR=KEY_RIGHT --ui-buttonmap A=KEY_ENTER --ui-buttonmap B=KEY_BACKSPACE --deadzone 80% --quiet --silent & sleep 1
        sleep .2

wait kodi.bin

sudo killall xboxdrv
sleep .2
xboxdrv --trigger-as-button --wid 0 --led 2 --detach-kernel-driver --quiet --silent & sleep 1
sleep .2

emulationstation
