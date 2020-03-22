# Docker archlinux

## Build

```bash
cd $this_repo
docker build -t tagname -f docker/Dockerfile .
```

## Setup

1. Install pyinstaller using ```pip install pyinstaller```.
2. In repo directory, run ```pyinstaller --distpath "$where_to_install" --clean darch.py``` to install ```darch.py``` as a program.
3. The command above will create ```$where_to_install/darch``` folder containing ```darch.exe``` in Windows, and something like that in other OS.
4. Add the ```$where_to_install/darch/darch.something``` to ```$PATH``` for execution.

## Setup Windows Terminal

1. CREATE new profile.
2. In that profile, there is a "commandline" option, change it to use ```darch``` command (run ```darch --help``` for more info).
3. Make that profile default.

## Running

Everytime ```darch``` command is executed, it will exec command into docker container.