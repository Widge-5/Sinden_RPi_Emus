# Sinden_RPi_Emus
Repository of installation scripts and binaries for unofficially hacked emulators offering quality-of-life improvements for Sinden lightgun users on Raspberry Pi 4.



# What can they do?
Here are the features that each hacked emulator can provide:

**lr-mame2010-StormedBubbles** 
- Some text here

**lr-mame2015-StormedBubbles** 
- Some text here

**lr-mame2016-StormedBubbles** 
- Some text here

**lr-mame-StormedBubbles** 
- Some text here



# Installing via RetroPie-Setup
To install any of these as alternative options on your RetroPie system, copy the files from the "install_scripts" folder and place them in the ```/home/pi/RetroPie-Setup/scriptmodules/libretrocores``` folder on your Raspberry Pi 4, then run RetroPie-Setup as normal.

Be advised that lr-mame-StormedBubbles cannot ordinarily compile on anything less than a Raspberry Pi 4 with 8Gb of RAM. However it is possible to compile on lesser Pi4s by bloating a swapfile on your starage medium You can do so by running the script `swap_bloater.sh`, which will create a temporary swapfile of approximately 8Gb in size, before attempting the compile.  The swapfile will be removed on the next reboot of your Pi.



# Manual installation
To install the cores manually on your Raspberry Pi, take the following steps:

**lr-mame2010-StormedBubbles** 
- download the file `lr-mame2010-StormedBubbles.zip` from the compiled_binaries folder.
- extract the file `mame2010_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-mame2010-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/arcade/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mame2010-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame2010-StormedBubbles/mame2010_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _arcade_ group, this core will be one of the options available via runcommand.


**lr-mame2015-StormedBubbles** 
- download the file `lr-mame2015-StormedBubbles.zip` from the compiled_binaries folder.
- extract the file `mame2015_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-mame2015-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/arcade/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mame2015-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame2015-StormedBubbles/mame2015_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _arcade_ group, this core will be one of the options available via runcommand.


**lr-mame2016-StormedBubbles** 
- download the file `lr-mame2016-StormedBubbles.zip` from the compiled_binaries folder.
- extract the file `mame2010_libretro.so` from the zip and place it in a folder called `/opt/retropie/libretrocores/lr-mame2016-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/arcade/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mame2016-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame2016-StormedBubbles/mame2016_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _arcade_ group, this core will be one of the options available via runcommand.


**lr-mame-StormedBubbles** 
- download the files `mamearcade_libretro.zip`, `mamearcade_libretro.z01` and `mamearcade_libretro.z02` from the compiled_binaries folder.
- extract the file ``mamearcade_libretro.zip`` from the zip(s) and place it in a folder called `/opt/retropie/libretrocores/lr-mame-StormedBubbles` on your Raspberry Pi (you may need root permissions to do this).
- edit the file `/opt/retropie/configs/arcade/emulators.cfg` to add the following entry (note this is one line of plain text) :
- `lr-mame-StormedBubbles = "/opt/retropie/emulators/retroarch/bin/retroarch -L /opt/retropie/libretrocores/lr-mame-StormedBubbles/mamearcade_libretro.so --config /opt/retropie/configs/arcade/retroarch.cfg %ROM%"`
- The next time you launch a rom from the _arcade_ group, this core will be one of the options available via runcommand.
