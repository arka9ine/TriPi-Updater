**TriPi Updater**

Visit https://tripi.junaos.com to download the bootable image that this updater is for. Burn, Insert, Go!

Updater script for those running TriPi 4.0 image or newer.

As of v4.0, this readme file that comes with your TriPi updater script will include information on the update it is coming with.
This can include changelog info for that specific update, new features, and/or warnings in regard to anything that may break.

#

**Changes in this release**

-Update 12/19/2015

-This update brings TriPi to version 4.2 and does not warrant a further version change.

-Added Retroarch LCD Fix to the TriPi menu. You must run the fix in order to apply it.

-This LCD fix is for those trrying to use Retroarch-based emulators on a 120Hz LCD TV screen and are experiencing input lag issues. It is a replacement retroarch.cfg file that should minimize this input lag. 

HOWEVER. This fix will make some emulators perform poorly and drop in FPS. Use your pre-launch options to choose a new emulator that performs better. If you would rather deal with the input lag, or use a 60Hz monitor, then you don't need to apply the fix.

-There is not an option added for reverting back to 60Hz monitors. If you feel that you will be needing to switch back-and-forth regularly, you may want to research a better alternative. This option is more for those who use the 120Hz LCD TV's regularly.


-If you already have a TriPi-based setup (RetroPie + Kodi 15.1 installed on top of Raspbian Wheezy), or used previous versions of TriPi that were on my github, you can clone this repo and run update.sh (as sudo, of course). From then on, you will have a "TriPi-Updater" option under "TriPi" in EmulationStation.

-You may run this updater anyways if you modified TriPi-related files and want to attempt to restore them.

-If you modified files unrelated to TriPi, this will not fix them and you will probably need to find answers elsewhere.

Check back later for future releases.

#

#

**Release type**

Feature addition - Stable. 

This update should not directly impact any functionality, as it is mainly focused on cleaning up the Emulationstation/TriPi GUI.

#

#

###################

Note that not all updates will warrant a version change, especially if the code is untested or lightly tested.

###################

Enjoy!
