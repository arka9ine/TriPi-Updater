#!/bin/bash

echo "Installing cmake..."
sleep 1
sudo wget https://cmake.org/files/v3.5/cmake-3.5.0-rc1.tar.gz
sleep 1
tar zxf cmake-3.5.0-rcl.tar.gz
sleep 1
cd cmake-3.5.0-rcl
sleep 1
sudo ./bootstrap
sleep 1
sudo make
sleep 1
sudo make install
sleep 1 
cd

echo "Installing some extra libraries that we need..."
sleep 1
sudo apt-get -y install libopus-dev libexpat1-dev libssl-dev libasound2-dev libudev-dev libavahi-client-dev libcurl4-openssl-dev libjs-jquery
sleep 1
wget http://archive.raspbian.org/raspbian/pool/main/libe/libevdev/libevdev-dev_1.4.6%2bdfsg-1_armhf.deb
sleep 1
wget http://archive.raspbian.org/raspbian/pool/main/libe/libevdev/libevdev-tools_1.4.6%2bdfsg-1_armhf.deb
sleep 1
wget http://archive.raspbian.org/raspbian/pool/main/libe/libevdev/libevdev2_1.4.6%2bdfsg-1_armhf.deb
sleep 1
sudo dpkg -i libevdev*
sleep 1

echo "Building and installing Moonlight..."
sleep 1
wget https://github.com/irtimmer/moonlight-embedded/releases/download/v2.1.2/moonlight-embedded-2.1.2.tar.xz
sleep 1
tar xf moonlight-embedded-2.1.2.tar.xz
sleep 1
cd moonlight-embedded-2.1.2/
sleep 1
mkdir build
sleep 1
cd build/
sleep 1
sudo cmake ../
sleep 1
sudo make
sleep 1
sudo make install
sleep 1
cd ~

sudo reboot
