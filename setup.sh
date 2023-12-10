#!/data/data/com.termux/files/usr/bin/bash 

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
W="$(printf '\033[1;37m')"

clear 
echo ${G}"Updating repositories~ d('v')b" 
apt update &> /dev/null 
apt-mark hold openssl apt termux-tools bash &> /dev/null 
apt upgrade -y &> /dev/null 
apt update && apt install x11-repo tur-repo root-repo -y &> /dev/null 
echo ""
echo ${G}"Installing packages ─=≡Σ((( つ•̀ω•́)つ "
apt install git wget neofetch proot-distro which -y &> /dev/null 
mkdir -p $PREFIX/var/lib/proot-distro/dlcache
mkdir -p $PREFIX/var/lib/proot-distro/installed-rootfs 
apt install termux-x11-nightly pulseaudio -y &> /dev/null 
apt-mark unhold openssl apt termux-tools bash &> /dev/null 
apt update &> /dev/null 
echo ""
echo ${G}"Please type Y for upgrading packages"${W}
apt upgrade -y 

# my own needs 
clear 
echo ${G}"Please allow storage permissions 0w0" ${W}
termux-setup-storage 
echo ""
echo ${G}"Installing my own need packages :)"
apt update &> /dev/null 
apt install tigervnc xorg-xhost -y &> /dev/null
echo ""
echo ${G}"It's boring ヽ(・×・´)ゞ "
echo "vncserver -listen tcp :1 && DISPLAY=:1 xhost + " >> $PREFIX/bin/startvnc 
echo "vncserver -kill :1" >> $PREFIX/bin/stopvnc
chmod +x $PREFIX/bin/startvnc 
chmod +x $PREFIX/bin/stopvnc
 


# fonts 
echo ""
echo ${G}"Downloading font type "${W}
wget -nv https://github.com/23xvx/Termux-Setups/raw/main/files/font.ttf -P ~/.termux/
termux-reload-settings 
echo ""
echo ${G}"Now the fonts looks so cool, right?"
sleep 2

echo ${G}"Setup Finish !"




