#!/bin/bash
dpkg --add-architecture i386
apt-get update
apt-get -y install software-properties-common
wget -qO - https://dl.winehq.org/wine-builds/winehq.key | apt-key add -
apt-add-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ bionic main'
yes | add-apt-repository ppa:cybermax-dexter/sdl2-backport
apt update
wget -O- -q https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04/Release.key | apt-key add -
echo "deb http://download.opensuse.org/repositories/Emulators:/Wine:/Debian/xUbuntu_18.04 ./" | tee /etc/apt/sources.list.d/wine-obs.list
apt update
apt install --install-recommends winehq-stable
