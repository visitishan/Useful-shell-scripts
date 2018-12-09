#!/bin/bash

# Packages list - set T/F
InstallSnapd=T
InstallGnometwaek=T
InstallAnydesk=T
InstallLivepatch=T
InstallGitkraken=T
InstallOpera=T
InstallPycharm=T
InstallSublime=T
InstallVlc=T
InstallWpsoffice=T
InstallPython3=T
InstallPip3=T
InstallNodejs=T
InstallNpm=T
InstallNetspeed=T


# Install Sanpd
installSnapd ()
{
	if [ "X$InstallSnapd" = "XT" ]; then
		sudo apt install snapd
	fi
}

# Install Gnometweaktool
installGnometweak ()
{
	if [ "X$InstallGnometweak" = "XT" ]; then
		sudo apt-get -y install gnome-tweak-tool
	fi
}

# Install AnyDesk
installAnydesk ()
{
	if [ "X$InstallAnydesk" = "XT" ]; then
		sudo apt -y --fix-broken install		
		sudo apt-get -y install gdebi
		wget https://download.anydesk.com/linux/anydesk_2.9.6-1_amd64.deb
		sudo dpkg -i anydesk_2.9.6-1_amd64.deb
		sudo apt-get update
		sudo apt-get -f install	
	fi
}

# Install Canonical Livepatch
installLivepatch ()
{
	if [ "X$InstallLivepatch" = "XT" ]; then
		sudo apt -y --fix-broken install
		sudo snap install canonical-livepatch
		sudo canonical-livepatch enable
	fi
}

# Install Gitkraken
installGitkraken ()
{
	if [ "X$InstallGitkraken" = "XT" ]; then
		sudo apt -y --fix-broken install
		sudo apt -y install curl libcurl3
		sudo apt -y install curl libcurl4
		sudo apt -y --fix-broken install
		wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
		sudo dpkg -i gitkraken-amd64.deb
	fi
}

# Install Opera
installOpera ()
{
	if [ "X$InstallOpera" = "XT" ]; then
		sudo apt -y --fix-broken install
		wget -qO- https://deb.opera.com/archive.key | sudo apt-key add -
		sudo add-apt-repository "deb [arch=i386,amd64] https://deb.opera.com/opera-stable/ stable non-free"
		sudo apt install -y opera-stable
	fi
}

# Install Pycharm
installPycharm ()
{
	if [ "X$InstallPycharm" = "XT" ]; then
		sudo apt -y --fix-broken install
		sudo snap install pycharm-community --classic
	fi
}

# Install Sublime
installSublime ()
{
	if [ "X$InstallSublime" = "XT" ]; then
		sudo apt -y --fix-broken install
		sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
		curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
		sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
		sudo apt -y install sublime-text
	fi
}

# Install VLC
installVlc ()
{
	if [ "X$InstallVlc" = "XT" ]; then
		sudo apt -y --fix-broken install
		sudo apt-get -y install vlc
	fi
}

# Install WPS Office
installWpsoffice ()
{
	if [ "X$InstallWpsoffice" = "XT" ]; then
		sudo snap install wps-office
	fi
}

# Install Python3
installPython3 ()
{
	if [ "X$InstallPython3" = "XT" ]; then
		sudo apt-get -y install python3
	fi
}

# Install Pip3
installPip3 ()
{
	if [ "X$InstallPip3" = "XT" ]; then
		sudo apt-get -y install python3-pip
	fi
}

# Install Nodejs
installNodejs ()
{
	if [ "X$InstallNodejs" = "XT" ]; then
		sudo apt-get -y install nodejs
	fi
}

# Install Npm
installNpm ()
{
	if [ "X$InstallNpm" = "XT" ]; then
		sudo apt-get -y install npm
	fi
}

# Install Netspeed
installNetspeed ()
{
	if [ "X$InstallNetspeed" = "XT" ]; then
		sudo apt -y --fix-broken install
		wget http://ppa.launchpad.net/fixnix/netspeed/ubuntu/pool/main/i/indicator-netspeed-unity/indicator-netspeed-unity_1.04-yakkety0_amd64.deb
		sudo dpkg -i indicator-netspeed-unity_1.04-yakkety0_amd64.deb
	fi
}

installSnapd
installAnydesk
installLivepatch
installLibcurl3
installOpera
installPycharm
installSublime
installVlc
installWpsoffice
installPython3
installPip3
installNodejs
installNpm
installNetspeed
sudo apt-get update