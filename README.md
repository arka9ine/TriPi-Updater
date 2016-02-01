**TriPi Updater**

Visit https://tripi.junaos.com to download the bootable image that this updater is for. Burn, Insert, Go!

Updater script for those running TriPi 4.0 image or newer.

As of v4.0, this readme file that comes with your TriPi updater script will include information on the update it is coming with.
This can include changelog info for that specific update, new features, and/or warnings in regard to anything that may break.

#

**Changes in this release**

-Update 2/1/2016

-I HAVE A PC AGAIN!

Sorry for the radio silence, I did not have a PC to use for a while now. If you have feature requests or bugs, feel free to report/suggest them here on the github!

-This update brings TriPi to version 4.2 and does not warrant a further version change.

-The 120Hz LCD Fix is not stable enough to keep in circulation, so it is being removed.

-Xbox360 wired AND wireless controllers /should/ be supported by default now. Even when the support was only available via the hotfix, some people had success with it, others did not. In any scenario, these configurations did not remove or disable wired controller support, so it is easier for me to work on one standard cfg file as opposed to testing against two. As a result, the "Xbox360 Controller Hotfix" file will be removed, and the retroarch.cfg file that was being used before will be the new default cfg file being used across all Retroarch-based emulators, with the volume kicked to the default "0" instead of "-20".



-If you already have a TriPi-based setup (RetroPie + Kodi 15.1 installed on top of Raspbian Wheezy), or used previous versions of TriPi that were on my github, you can clone this repo and run update.sh (as sudo, of course). From then on, you will have a "TriPi-Updater" option under "TriPi" in EmulationStation.

-You may run this updater anyways if you modified TriPi-related files and want to attempt to restore them.

-If you modified files unrelated to TriPi, this will not fix them and you will probably need to find answers elsewhere.

Check back later for future releases.

#

#

**Release type**

Feature addition - Stable -
IF YOU MADE SPECIFIC CHANGES TO YOUR RETROARCH.CFG FILE, YOU WILL NEED TO RECONFIGURE THEM AFTER THIS UPDATE!
#

#

###################

Note that not all updates will warrant a version change, especially if the code is untested or lightly tested.

###################

Enjoy!
