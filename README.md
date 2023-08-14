# Termux-Setup-Script
<p>Scipts to setup Termux.</p> 

## Steps : 
1. Install termux from [f-droid](https://f-droid.org/en/packages/com.termux/) or [github](https://github.com/termux/termux-app/releases/tag/v0.118.0). Make sure to download universual ones.
2. Open termux , allow notice permissions. 
3. Paste the following 

```bash 
curl https://github.com/23xvx/Termux-Setup-Script/setup.sh >> setup.sh 
bash setup.sh 
```

<p>This will install basic tools and packages , including [proot-distro](https://github.com/termux/proot-distro) and [termux-x11](https://github.com/termux/termux-x11)</p>

### Packages installed :
git , wget , neofetch , proot-distro , xwayland , termux-x11-nightly , pulseaudio , tsu 

# Other Scripts 
<p>Also , there are [setup-extra.sh](https://github.com/23xvx/Termux-Seup-Script/setup-extra.sh) for installing basic & extra packages for my own need  </p> 
<p>To execute it, just paste the following instead of the above one </p>

```bash 
curl https://github.com/23xvx/Termux-Setup-Script/setup-extra.sh >> setup-extra.sh 
bash setup-extra.sh 
```
<p> This is will install openssh, cmake and virglrenderer-android (GPU acceleration).</p>
<p> It will also change the font type to ubuntu like fonts.</p>

### Packages installed : (Dependent packages not being listed)
git , wget , neofetch , proot-distro , xwayland , termux-x11-nightly , pulseaudio , tsu , tigervnc , xorg-xhost , dbus , cpufetch , virglrenderer-android , cmake , clang , make , python-pip , openssh , make 




