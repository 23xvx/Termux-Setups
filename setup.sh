#!/data/data/com.termux/files/usr/bin/bash 

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
W="$(printf '\033[1;37m')"

clear 
echo ${G}"Updating repositories " 
apt update &> /dev/null 
apt -y --with-new-pkgs -o Dpkg::Options::="--force-confnew" upgrade &> /dev/null 
apt update && apt install x11-repo tur-repo -y &> /dev/null 
echo ""
echo ${G}"Allowing storage permission" ${W}
termux-setup-storage || echo ${R}"Error on granding storage permission"
echo ""
echo ${G}"Allowing external apps permission" ${W}
sed -i "s/'# allow-external-apps = true'/'allow-external-apps = true'/g" ~/.termux/termux.properties || echo ${R}"Error on granding external apps permission"

# my own needs 
clear
packages="openssh git wget neofetch proot-distro which pulseaudio virglrenderer-android"
echo ${G}"Installing packages"
apt install $packages -y &> /dev/null
mkdir -p $PREFIX/var/lib/proot-distro/dlcache
mkdir -p $PREFIX/var/lib/proot-distro/installed-rootfs 

# styling
echo ""
echo ${G}"Downloading styling files "${W}
wget -nv https://github.com/23xvx/Termux-Setups/raw/main/files/font.ttf -P ~/.termux/
wget -nv https://github.com/23xvx/Termux-Setups/raw/main/files/color.properties -P ~/.termux
termux-reload-settings || echo -e ${R}"Update settings failed\nrestart termux to apply settings"
echo ""
sleep 2

# alias 
cat <<- EOF > ~/.profile
alias la="ls -la"
alias update="apt update && apt upgrade"
export SD="/sdcard/Download"
EOF

cat <<- EOF > "${PREFIX}/bin/ip_address"
ifconfig | grep broadcast | awk -F ' ' '{ print $2 }'
EOF

chmod +x ${PREFIX}/bin/ip_address

# end message
clear
echo ${G}"Setup Finish "




