while pgrep omxplayer &>/dev/null;
    do sleep 1;
done

[ "`tty`" = "/dev/tty1" ] && emulationstation
