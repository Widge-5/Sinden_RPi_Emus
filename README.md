# Sinden_RPi_Emus
Repository of installation scripts and binaries for unofficial and/or hacked emulators offering quality-of-life improvements for Sinden lightgun users on Raspberry Pi 4.

Please note that no roms are provided here.


# What can they do?
Here are the features that each hacked/unofficial emulator can provide:

**lr-mame2010-StormedBubbles** 
- **New core option** (lightgun offscreen position) - Determine the corner in which all offscreen shots are fired (top left or bottom right), or allow the cursor to move freely along the screen edges
- **Blue Shark** (blueshrk) - Perfect accuracy when using the gun as a paddle controller
- **Born to Fight** (borntofi) - Better accuracy

**lr-mame2015-StormedBubbles** 
- **New core option** (lightgun offscreen position) - Determine the corner in which all offscreen shots are fired (top left or bottom right), or allow the cursor to move freely along the screen edges
- **Blue Shark** (blueshrk) - Perfect accuracy for using the gun as a paddle controller
- **Born to Fight** (borntofi) - Better accuracy
- **ClayBuster** (claybust) - Better accuracy

**lr-mame2016-StormedBubbles** 
- **New core option** (lightgun offscreen position) - Determine the corner in which all offscreen shots are fired (top left or bottom right), or allow the cursor to move freely along the screen edges
- **Blue Shark** (blueshrk) - Perfect accuracy for using the gun as a paddle controller
- **Born to Fight** (borntofi) - Better accuracy
- **ClayBuster** (claybust) - Better accuracy
- **Invasion: The Abductors** (invasnab) - Perfect accuracy and working reload (must choose "fixed (bottom right)" in the "lightgun offscreen position" core option)

**lr-mame-StormedBubbles** 
- **New core option** (lightgun offscreen position) - Determine the corner in which all offscreen shots are fired (top left or bottom right), or allow the cursor to move freely along the screen edges
- **Blue Shark** (blueshrk) - Perfect accuracy for using the gun as a paddle controller
- **Born to Fight** (borntofi) - Better accuracy
- **Circus** (circus) - Perfect accuracy for using the gun as a paddle controller
- **ClayBuster** (claybust) - Better accuracy
- **Clowns** (clowns) - Perfect accuracy for using the gun as a paddle controller
- **Dead Eye** (deadeye) - Perfect accuracy for using the gun as a paddle controller
- **Great Guns** (greatgun) - Perfect accuracy
- **Gypsy Juggler** (gypsyjug) - Perfect accuracy for using the gun as a paddle controller
- **Invasion: The Abductors** (invasnab) - Perfect accuracy and working reload (must choose "fixed (bottom right)" in the "lightgun offscreen position" core option)
- **Jurassic Park** (jpark) - Better accuracy
- **Poka Poka Satan** (ppsatan) - Perfect accuracy between crosshair and gun sight. Need to display all 3 monitors on screen. Port 1 gun aims at right screen, and Port 2 gun aims at left screen. Need to keep trigger pulled briefly for shot to register. This can give the impression of inaccurate shots. In all game modes, either one gun must be assigned to control ports 1 and 2 or two guns must be used.
- **Triple Hunt** (triplhnt) - Adds the ability to make two clones of the game.  Triple Hunt is 3 games in 1: Witch Hunt, Hit the Bear and Raccoon Hunt.  Dipswitch settings in the Tab menu can switch between the three game modes, but with this hack you can make two duplicates or symlinks of the triplhnt rom, naming them _triplhna.zip_ and _triplhnb.zip_ and each clone will use a separate game config allowing you to have each instance set up for each of the game modes individually accessible directly from your retropie gamelist instead of having to mess around changing things in the tab menu.

**lr-mess-StormedBubbles** 
- **Mission: Paintball Powered Up** (pballpup) - Perfect accuracy correction
- **Star Wars: The Clone Wars** (swclone) - Perfect accuracy correction
- **Teenage Mutant Ninja Turtles: Mutant & Monster Mayhem** (tmntmutm) - Perfect accuracy correction

**lr-flycast-flyinghead** 
- **Virtua Cop 2** (American/Japanese standalone and Smash Pack versions) - Playable, may need "Force WinCE Mode" set to "On".
- **Ninja Assault** - 2-player gaming enabled, which is not possible on regular Flycast.

**lr-flycast-mazan** 
- **Mazan: Flash of the Blade** - This hacked fork of lr-flycast was created specifically to make **Mazan** playable with a mouse/lightgun. The sword defaults to a neutral position and "Gun Aux A" button can be used to slash. 

**lr-duckstation** - a discontinued core that is no longer available via RetroPie-Setup.
- **Gunfighter: The Legend of Jesse James** - It might be the best way to play this game on the Raspberry Pi.
- **Judge Dredd** - runs, but there is only support for one lightgun so a 2 player game is not possible.

**lr-swanstation** - an in-development core that was forked from duckstation and not yet available via RetroPie-Setup.
- **Gunfighter: The Legend of Jesse James** - It is capable of running this game on the Raspberry Pi.
- **Judge Dredd** - runs, but there is only support for one lightgun so a 2 player game is not possible.


# Installing via RetroPie-Setup
To install any of these as alternative options on your RetroPie system, copy the files from the "install_scripts" folder and place them in the ```/home/pi/RetroPie-Setup/scriptmodules/libretrocores``` folder on your Raspberry Pi 4, then run RetroPie-Setup as normal.

Be advised that **lr-mame-StormedBubbles** and **lr-mess-StormedBubbles** cannot ordinarily compile on anything less than a Raspberry Pi 4 with 8Gb of RAM. However it is possible to compile on lesser Pi4s by bloating a swapfile on your storage medium You can do so by running the script `swap_bloater.sh`, which will create a temporary swapfile of approximately 8Gb in size, before attempting the compile.  The swapfile will be removed on the next reboot of your Pi.

**lr-flycast-mazan** will require the following additional step before attempting to compile: in the folder `/home/pi/RetroPie-Setup/scriptmodules/libretrocores` there should be an existing subfolder called `lr-flycast`. Either make a duplicate or symlink to this folder called `lr-flycast-mazan` in the same location.



# Manual installation
Please note, these binaries may not be the most up-to-date versions of the cores.  Check the upload dates to find out when they were compiled. 
To install the cores manually on your Raspberry Pi, take the following steps:


**lr-mame2010-StormedBubbles** 
- download the file `lr-mame2010-StormedBubbles.zip` from the compiled_binaries folder.
- extract the file `mame2010_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-mame2010-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/arcade/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mame2010-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame2010-StormedBubbles/mame2010_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _Arcade_ group, this core will be one of the options available via runcommand.


**lr-mame2015-StormedBubbles** 
- download the files `lr-mame2015-StormedBubbles.zip` and `lr-mame2015-StormedBubbles.z01` from the compiled_binaries folder.
- extract the file `mame2015_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-mame2015-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/arcade/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mame2015-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame2015-StormedBubbles/mame2015_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _Arcade_ group, this core will be one of the options available via runcommand.


**lr-mame2016-StormedBubbles** 
- download the files `lr-mame2016-StormedBubbles.zip` and `lr-mame2016-StormedBubbles.z01` from the compiled_binaries folder.
- extract the file `mame2016_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-mame2016-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/arcade/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mame2016-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame2016-StormedBubbles/mame2016_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _Arcade_ group, this core will be one of the options available via runcommand.


**lr-mame-StormedBubbles** 
- download the files `lr-mame-StormedBubbles.zip`, `lr-mame-StormedBubbles.z01` and `lr-mame-StormedBubbles.z02` from the compiled_binaries folder.
- extract the file `mamearcade_libretro.zip` from the zip(s) and place it in a folder called `/opt/retropie/libretrocores/lr-mame-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/arcade/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mame-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame-StormedBubbles/mamearcade_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _Arcade_ group, this core will be one of the options available via runcommand.


**lr-mess-StormedBubbles** 
- download the files `lr-mess-StormedBubbles.zip`, `lr-mess-StormedBubbles.z01` and `lr-mess-StormedBubbles.z02` from the compiled_binaries folder.
- extract the files `mess_libretro.so` from the zip(s) and place it in a folder called `/opt/retropie/libretrocores/lr-mess-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the files `/opt/retropie/configs/arcade/emulators.cfg` and `/opt/retropie/configs/mame/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mess-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mess-StormedBubbles/mess_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from either the _Arcade_ group or the _Mame_ group, this core will be one of the options available via runcommand.


**lr-flycast-flyinghead** 
- download the file `lr-flycast-flyinghead.zip` from the compiled_binaries folder.
- extract the file `flycast_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-flycast-flyinghead` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/dreamcast/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-flycast-flyinghead = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-flycast-flyinghead/flycast_libretro.so </dev/null --config /opt/retropie/configs/dreamcast/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _Dreamcast_ group, this core will be one of the options available via runcommand.


**lr-flycast-mazan** 
- in the folder `/home/pi/RetroPie-Setup/scriptmodules/libretrocores` there should be an existing subfolder called `lr-flycast`.  Either make a duplicate or symlink to this folder called `lr-flycast-mazan` in the same location.
- download the file `lr-flycast-mazan.zip` from the compiled_binaries folder.
- extract the file `flycast_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-flycast-mazan` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/dreamcast/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-flycast-mazan = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-flycast-mazan/flycast_libretro.so </dev/null --config /opt/retropie/configs/dreamcast/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _Dreamcast_ group, this core will be one of the options available via runcommand.


**lr-duckstation** 
- download the file `lr-duckstation.zip` from the compiled_binaries folder.
- extract the file `duckstation_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-duckstation` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/psx/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-duckstation = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-duckstation/duckstation_libretro.so </dev/null --config /opt/retropie/configs/psx/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _PSX_ group, this core will be one of the options available via runcommand.


**lr-swanstation** 
- download the file `lr-swanstation.zip` from the compiled_binaries folder.
- extract the file `swanstation_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-swanstation` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/psx/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-swanstation = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-swanstation/swanstation_libretro.so --config /opt/retropie/configs/psx/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _PSX_ group, this core will be one of the options available via runcommand.


