# Docker archlinux

## Build

```bash
cd $this_repo
docker build -t tagname -f docker/Dockerfile .
```

## Setup

1. ADD ```darch.py``` to PATH
2. MAKE the OS can execute python script as command

## Setup Windows Terminal

1. CREATE new profile
2. In that profile, there is a "commandline" option, change it to use ```darch``` command.
3. Make that profile default

## Running

Everytime ```darch``` command is executed, it will exec into docker container in commandline interface.