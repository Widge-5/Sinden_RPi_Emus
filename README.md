# Sinden_RPi_Emus
Repository of installation scripts and binaries for unofficial and/or hacked emulators offering quality-of-life improvements for Sinden lightgun users on Raspberry Pi 4.



# What can they do?
Here are the features that each hacked/unofficial emulator can provide:

**lr-mame2010-StormedBubbles** 
- Some text here

**lr-mame2015-StormedBubbles** 
- Some text here

**lr-mame2016-StormedBubbles** 
- Some text here

**lr-mame-StormedBubbles** 
- Some text here

**lr-flycast-flyinghead** 
- Some text here

**lr-flycast-mazan** 
- A hacked fork of lr-flycast that was created specifically to make the game **Mazan: Flash of the Blade** playable with a mouse/lightgun. The sword defaults to a neutral position and "Gun Aux A" button can be used to slash. 

**lr-duckstation**
- lr-duckstation is a discontinued core that is no longer available via RetroPie-Setup.  It might be the best way to play **Gunfighter: The Legend of Jesse James** on the Raspberry Pi.

**lr-swanstation**
- lr-swanstation is an in-development core that is forked from duckstation and not yet available via RetroPie-Setup.  It is capable of running **Gunfighter: The Legend of Jesse James** on the Raspberry Pi.


# Installing via RetroPie-Setup
To install any of these as alternative options on your RetroPie system, copy the files from the "install_scripts" folder and place them in the ```/home/pi/RetroPie-Setup/scriptmodules/libretrocores``` folder on your Raspberry Pi 4, then run RetroPie-Setup as normal.

Be advised that lr-mame-StormedBubbles cannot ordinarily compile on anything less than a Raspberry Pi 4 with 8Gb of RAM. However it is possible to compile on lesser Pi4s by bloating a swapfile on your storage medium You can do so by running the script `swap_bloater.sh`, which will create a temporary swapfile of approximately 8Gb in size, before attempting the compile.  The swapfile will be removed on the next reboot of your Pi.

lr-flycast-mazan will require the following additional step before attempting to compile: in the folder `/home/pi/RetroPie-Setup/scriptmodules/libretrocores` there should be an existing subfolder called `lr-flycast`. Either make a duplicate or symlink to this folder called `lr-flycast-mazan` in the same location.


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
- extract the file ``mamearcade_libretro.zip`` from the zip(s) and place it in a folder called `/opt/retropie/libretrocores/lr-mame-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/arcade/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mame-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame-StormedBubbles/mamearcade_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _Arcade_ group, this core will be one of the options available via runcommand.


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


