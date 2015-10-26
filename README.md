**TriPi Updater**

visit https://tripi.junaos.com to download the bootable image that this updater is for. Burn, Insert, Go!

THE SITE WILL BECOME OPEN TO THE PUBLIC WITH TriPi 4.0 AVAILABLE TO ALL ON 10/28/2015!

Sorry for the delay, folks. Had a few kinks to work out (giggity) and have been having issues with my ISP.

Updater script for those running TriPi 4.0 image or newer.

As of v4.0, this readme file that comes with your TriPi updater script will include information on the update it is coming with.
This can include changelog info for that specific update, new features, and/or warnings in regard to anything that may break.

#

Some of the files that are included when running the TriPi-Updater won't actually be installed during the update.

They are included as part of the souce code package in case anyone needs to manually revert them. However, I will not have them be auto-installed unless I have made modifications to them that warrant it. 

This is because installing them unnecessarily will revert some settings you may have modified (like retroarch.cfg keybinds) back to TriPi defaults.

I will edit the TriPi-Updater to make sure it warns you if a file will be edited or replaced in such a way that may require you to reconfigure something.

#

#

**Changes in this release**

10/26/15

-Added splashscreen install files and commands to the repo, so that it can be easily replaced when TriPi goes through a version bump.

-Modified echoed text for the Updater scripts, and fixed a few color-related issues.

-If you are running the new TriPi 4.0 image, you can use the built-in TriPi updater to grab these quick fixes. They don't have any impact on functionality, but it's good for us all to stay on the same page.

-If you already have a TriPi-based setup (RetroPie + Kodi 15.1 installed on top of Raspbian Wheezy), or used previous versions of TriPi that were on my github, you can clone this repo and run update.sh (as sudo, of course). From then on, you will have a "TriPi-Updater" option under "Ports" in ES.

-You may run this updater anyways if you modified TriPi-related files in version 4.0 and want to attempt to restore them.

-If you modified files unrelated to TriPi, this will not fix them and you will probably need to find answers elsewhere.

Check back later for future releases.

#

#

**Release type**

Stable (fully tested) - The files you will be getting in this release are exactly what came with the TriPi 4.0 image.

#

#

###################

Note that not all updates will warrant a version change, especially if the code is untested or lightly tested.

###################

Enjoy!
