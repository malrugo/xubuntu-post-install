#!/bin/bash
# -*- ENCODING: UTF-8 -*-
if [[ $EUID -ne 0 ]]; then
   	echo "This script must be run as root" 
   	exit 1
else
    echo "updating"
    apt update && apt upgrade
    ;;
    echo "installing curl, wget, zsh"
    apt install -y curl wget zsh 
    ;;
    echo "Installing VLC Media Player"
	apt install vlc -y
    ;;
    echo "Installing castor dependencies"
    apt install -y build-essential rustc cargo libgtk-3-dev libgdk-pixbuf2.0-dev libssl-dev
    cd ~/Downloads
    git clone https://github.com/snwh/ubuntu-post-install.git

    git clone https://github.com/grassmunk/Chicago95.git

    git clone https://git.sr.ht/~julienxx/castor
    
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

    #sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # ssh-keygen
    # bash Miniconda3-latest-Linux-x86_64.sh
    # cd castor
    # make 
    # make install