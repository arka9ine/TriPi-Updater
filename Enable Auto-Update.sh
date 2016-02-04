#!/bin/bash

crontab -l > mycron
echo "0 3 * * * /home/pi/RetroPie/roms/TriPi/TriPi-Updater.sh" >> mycron
crontab mycron
rm mycron
