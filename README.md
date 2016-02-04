**TriPi Updater**

Visit https://tripi.junaos.com to download the bootable image that this updater is for. Burn, Insert, Go!

Updater script for those running TriPi 4.0 image or newer.

As of v4.0, this readme file that comes with your TriPi updater script will include information on the update it is coming with.
This can include changelog info for that specific update, new features, and/or warnings in regard to anything that may break.

#

**Changes in this release**

-Update 2/3/2016

-Special thanks to Jay Schewerberg for the help with this update!

-Added Auto-Updater! In the TriPi menu, you will now see options to enable or disable auto-updates for TriPi.

-If you choose to enable it, you are agreeing to let TriPi update every night at midnight via a daily cronjob. This means that certain files you may have customized such as retroarch.cfg and smb.conf will be replaced by the ones provided in the TriPi update, even if they weren't changed since the last update.

-If you don't want that to happen, then don't enable it, (or if you change your mind, disable it) and use the manual update option When an update comes out that you are interested in taking. Both update methods function exactly the same other than the difference of being done manually or automatically.


-If you already have a TriPi-based setup (RetroPie + Kodi 15.1 installed on top of Raspbian Wheezy), or used previous versions of TriPi that were on my github, you can clone this repo and run update.sh (as sudo, of course). From then on, you will have a "TriPi-Updater" option under "TriPi" in EmulationStation.

-You may run this updater anyways if you modified TriPi-related files and want to attempt to restore them.

-If you modified files unrelated to TriPi, this will not fix them and you will probably need to find answers elsewhere.

Check back later for future releases.

#

#

**Release type**

Feature addition - Stable -
#

#

###################

Note that not all updates will warrant a version change, especially if the code is untested or lightly tested.

###################

Enjoy!
