
# TriPi
TriPi - A RPi 2 with Raspbian Wheezy, Kodi, Emulationstation, and Xbox360 controller support AND ALL 3 ENVIRONMENTS ARE ON TOP OF ONE OS, SO THERE'S NO NEED TO SWAP SD CARDS!! :D

I have seen many people interested in the idea of running Emulationstation (RetroPie) AND Kodi on top of a Raspbian Wheezy install on a Raspberry Pi 2 Model B.
I have also become one of those people, and have been running that very setup for a few months now. I am very pleased with it.

However, I wanted to take this a step further, and add full Xbox360 controller support! 
This script, which is part of what I like to call my "TriPi" project, is to be used after setting up the above described environments in order to allow you to use an Xbox360 controller to launch Kodi and Emulationstation with a simple button press, as well as allow complete navigation within the two environments.

DISCLAIMERS: I am going to be nice and share the tutorials I used to install Kodi and Emulationstation onto my Pi, as well as how to move the /root partition to an external HDD/USB Stick (which GREATLY improves performance). HOWEVER, I am not responsible for these tutorials. I did not write them, all credit goes to the original authors. 

**I am also not in any way involved in the development of Emulationstation, Kodi, xboxdrv, alsa, or RaspbianOS.**

The method you used to create your Raspbian Wheezy microSD image plays a huge role in the results of these tutorials. I manually created a standalone Raspbian Wheezy image instead of using NOOBS. NOOBS installs can and may need special instructions. Again-- I'm providing them for easy reference. I won't know how to fix any problems you run into.

**UPDATE: AS OF VERSION 2.0, WIRELESS XBOX360 CONTROLLER SUPPORT IS CONFIRMED!!**

**WARNING: IF YOU PLAN TO USE A WIFI DONGLE WITH YOUR RASPBERRY PI, YOU /MUST/ OVERCLOCK YOUR RASPBERRY PI USING THE 'Raspberry Pi 2' PRESET IN RASPI CONFIG. IF YOU DO NOT, YOU WILL GET USB ACCESS ERRORS WHEN THE CONTROLLER TRIES TO LOAD, CAUSING IT TO FAIL AND NOT RESPOND TO INPUT. THIS AFFECTS BOTH WIRED AND WIRELESS CONTROLLERS, AND IS A HARDWARE BOTTLENECK CAUSED BY THE USB BUS, NOT AN ISSUE WITH TRIPI!**


Okay. Let's begin.

(1) First, go ahead and create your Raspbian Wheezy image onto your microSD card, and boot it up.
Go ahead and do your first-setup hubub... Locale/Language settings, Keyboard layout, time, overclock settings, and add a password to the default user 'pi'.

NOTE: PLEASE DO NOT CHANGE THE USER NAME OR TRY TO WORK UNDER ANOTHER ACCUONT NAME WHEN SETTING UP THESE ENVIRONMENTS AND/OR RUNNING MY SCRIPT. THEY ARE WRITTEN UNDER THE ASSUMPTION THAT YOU ARE THE USER 'pi'.


(2) Now that you got that stuff out of the way, follow this tutorial in order to move the /root partition over to an external storage medium. I highly recommend an HDD inside of an enclosure that has its own dedicated power supply. This provides the best performance by far in comparison to a USB Stick, and even more so over the MicroSD card (even a class 10).
This part is optional. However, you may experience some instabilities within Kodi if you decide to keep the system on your MicroSD card.

Tutorial link: http://raspberrypihobbyist.blogspot.com/2013/07/running-from-external-hard-drive.html?m=1

(3) Now, Let's get Kodi installed. 

Tutorial link: https://www.raspberrypi.org/forums/viewtopic.php?f=66&t=109088


(4) Go ahead and reboot afterwards, and then head on over to the following link to install Emulationstation.

Tutorial link: http://emulationstation.org/gettingstarted.html
IMPORTANT: You will want to follow the "Raspberry Pi (Stand-alone)" instructions!!!!!
Afterwards, go ahead and follow the "Configuring Emulationstation" tutorial that appears below the install tutorial, so you can start installing your emulators, and change any settings to the environment.

(5) Reboot one more time. Now, the the fun part.

(6) Go ahead and plug in your Xbox360 controller. It won't work yet, but it should still continuously blink.

(7) Now, go ahead and download TriPi-master.zip from here (github), unzip, and copy the unzipped TriPi-master folder to your /home/pi folder.

(8) In bash, you will type:

$ cd Tripi-master

(8b) Then, you will type

$ sudo chmod 777 TriPi-Wheezy.sh

That will tell the Pi to allow that script to be executed.

(9) Now, you will run it!

$ sudo ./TriPi-Wheezy.sh

(10) Done! after a reboot, your controller will now be available for use!

Press LB at any time to launch Kodi. (If Emulationstation is running, it will kill it and RetroArch for you)

Press RB at any time to launch Emulationstation. (If Kodi is running, it will kill it for you)

Press Xbox Guide button to return to the bash terminal.

