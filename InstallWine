# To use Photoshop in Ubuntu, you must install Wine. 
# In this installer, I set the bash script to install WineHQ Stable version on Ubuntu 20.04 LTS only.
# To install wineHq on other Distro, please see their website https://wiki.winehq.org/Download. 

#Install Wine
#!/bin/bash
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt update
sudo apt install --install-recommends winehq-stable
