#!/data/data/com.termux/files/usr/bin/bash 
apt update 
apt-mark hold openssl apt termux-tools bash 
apt upgrade -y 
apt update && apt install x11-repo tur-repo root-repo -y
apt install git wget neofetch proot-distro which tsu -y 
apt install xwayland termux-x11-nightly pulseaudio -y 
apt-mark unhold openssl apt termux-tools bash 
apt update && apt upgrade -y 

