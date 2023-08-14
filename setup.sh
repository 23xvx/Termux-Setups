#!/data/data/com.termux/files/usr/bin/bash 
apt update 
apt-mark hold openssl apt termux-tools bash 
apt upgrade -y 
apt update && apt install x11-repo tur-repo root-repo -y
apt install git wget neofetch proot-distro which tsu -y 
apt install xwayland termux-x11-nightly pulseaudio -y 
apt-mark unhold openssl apt termux-tools bash 
apt update && apt upgrade -y 

# my own needs 
apt update  
apt install tigervnc xorg-xhost dbus cpufetch virglrenderer-android -y 
apt install cmake clang make python-pip openssh make -y 
pip install meson mako yt-dlp 
echo "vncserver -listen tcp :1 && DISPLAY=:1 xhost + " >> $PREFIX/bin/startvnc 
echo "vncserver -kill :1" >> $PREFIX/bin/stopvnc
echo "
MESA_NO_ERROR=1 MESA_GL_VERSION_OVERRIDE=4.3COMPAT MESA_GLES_VERSION_OVERRIDE=3.2 virgl_test_server_android &
termux-x11 &" >> $PREFIX/bin/x11 
chmod +x $PREFIX/bin/x11
chmod +x $PREFIX/bin/startvnc 
chmod +x $PREFIX/bin/stopvnc
echo "pulseaudio --start \
     --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
     --exit-idle-time=-1" >> ~/.bashrc 


# fonts 
wget https://github.com/23xvx/Termux-Setup-Scripts/blob/main/files/font.ttf -P ~/.termux/
