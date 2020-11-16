#!/bin/bash
echo 'Hallo, Prithu'
echo 'This command will install your necessary softwares and set other sttings listed bellow.
1. Set your login screen on second monitor
2. Install Gnome-Tweaks
3. Install Pulse Sound Eqiulizer
4. Install Plank
5. Install Whatsapp
6. Install Wine for Ubuntu 20.04.1'
echo 'Please, give Su Password when Promt, 
	if you dont want, just press cntrl+c together'

#Setting login screen on second monitor
sudo cp ~/.config/monitors.xml ~gdm/.config/monitors.xml
sudo chown gdm:gdm ~gdm/.config/monitors.xml

#Installing Packeges
sudo apt install pulseeffects samba plank gnome-tweaks 
sudo snap install walc

#Install Wine
sudo dpkg --add-architecture i386
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo add-apt-repository 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
sudo apt update
sudo apt install --install-recommends winehq-stable


#making Samba Directory
mkdir /home/prithu/sambashare/

#adding samba configuration
sed -i "/#======================= Share Definitions =======================/a[sambashare]\ncomment = Samba on ubuntu\npath = /home/prithu/shambashare\nread only = no\nbrwosable = yes" /etc/samba/smb.conf

#restart Samba
sudo service smbd restart
sudo ufw allow samba
echo 'when promt, please set your Samba user Password'
sudo smbpasswd -a prithu

