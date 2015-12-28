while pgrep omxplayer &>/dev/null;
    do sleep 1;
done

[ "`tty`" = "/dev/tty1" ] && /opt/retropie/supplementary/runcommand/runcommand.sh 0 "startkodi" 

wait kodi.bin

sudo killall xboxdrv
sleep .2
xboxdrv --trigger-as-button --wid 0 --led 2 --detach-kernel-driver --quiet --silent & sleep 1
sleep .2

emulationstation
