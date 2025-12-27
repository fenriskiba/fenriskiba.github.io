# Fedora Workstation
**General Installation Note:** Anything requiring a "Third Party Repository" (not including Flathub) worked, but only through the terminal. Even if I installed an application from RPM Fusion or a Copr repo, it wouldn't show up in GNOME Software.

## Gaming
- [x] Steam
  - Proton in general seems to be having audio issues with my office speaker. Works fine in the game room though.

### Steam Games
- [x] Celeste
- [x] Star Wars Battlefront (classic)
- [x] Tunic
  - Steam Link Issues
  - Alt Tab Issues in Fullscreen (not a problem in windowed mode)
- [x] Cyberpunk 2077
- [x] Elden Ring
  - Needed to add `WINE_CPU_TOPOLOGY=8:0,1,2,3,4,5,6,7 %command%` to launcher options. Apparently EAC doesn't like CPUs with 32 cores.
    - Details: https://www.reddit.com/r/linux_gaming/comments/1axekec/comment/kvg07m0/
  - Controller not working though.

### Other Games
- [x] Genshin Impact
  - Bottles wasn't able to load the game.
  - Works with Twintail Launcher.
- [ ] ~~Fall Guys~~
  - Heroic was able to sign in, but had issues running. Game would open, but get stuck on the loading after selecting "Start".
  - Lutris couldn't get the game installed without crashing.
  - Bottles installed and gave an error after selecting "Start".
- [ ] ~~Overwatch~~
  - Lutris and Bottles both got an error about not being able to load game library in Battle.net.
- [x] Fire Emblem: Path of Radiance
  - Had to manually configure 8bitdo controller, but otherwise worked no problem.
- [x] Shadow of the Colossus

## Remote Connection
- [ ] ~~Steam Link - Device~~
  - Celeste it worked fine.
  - Tried playing Tunic, but ran into issues getting it to display. Searching the problem suggests it may not just be a Linux issue.
- [ ] ~~Steam Link - Flatpak~~
  - Took forever and never fully loaded when trying to play Celeste.
- [x] Sunshine/Moonlight
  - Had to manually install using `dnf` because Flatpak didn't work. This does follow their instructions though.
    - https://docs.lizardbyte.dev/projects/sunshine/latest/md_docs_2getting__started.html#fedora
  - Works well for remote desktop, except from locked machine. May be a Wayland issue.
  - Had an out of the box configuration for Steam Big Picture mode, which worked really well.
- [x] RustDesk
  - Works well for remote desktop, except from locked machine. May be a Wayland issue.
- [ ] ~~KasmVNC~~
  - Doesn't seem to support newer versions of Fedora.
  - Tried w/ Fedora 41 build and I couldn't get the server to start.
- [ ] ~~Built in Remote Desktop support~~
  - Easy to enable in Fedora (assuming it's actually working), but unable to connect via Remmina.

## Media
### Images
- [x] digiKam
- [x] GIMP
- [x] Pinta

### Video
- [x] VLC
- [x] *Web Cam*
  - Camera
- [x] Handbrake

#### Streaming
- [x] OBS
  - Can easily install the app and set up a scene.
    - Has some inconsistent issues with my basement webcam, but it seems to like the one in the office more.
      - Able to get it work using Beta Pipewire support.
  - Trouble with virtual camera support.
    - Had to install `v4l2loopback` (which I had some trouble with due to issues enabling RPM Fusion) to get the option to display.
      - https://obsproject.com/kb/virtual-camera-troubleshooting
    - Would give an error "Starting the output failed. Please check the log for details.", but logs didn't show an error.
  - Recording worked no problem (though it does default to dropping it directly in the home folder, which is a bit odd).
  - Streaming to Youtube worked no problem.
- [ ] ~~VTube Studio~~
  - The app installed and loaded fine with Proton, but the webcam wouldn't work (it would recognize it and configure it, but then never seemed to actually get the stream).

#### Editing
- [x] Davinci Resolve
  - Installing directly only worked w/ `SKIP_PACKAGE_CHECK=1`, but then the app still wouldn't open.
  - Got it running with [davincibox](https://github.com/zelikos/davincibox), but wasn't able to create anything. Not sure if that was an issue with davincibox or with me not knowing DaVinci Resolve.
- [x] Kdenlive

## System Tools
- [x] ClamTK
- [x] CPU-X
- [x] Flatseal
- [x] GParted
- [x] *Thermal Monitoring Tool*
  - Vitals - GNOME Extension
  - Mission Center

## Internet/Communications
- [x] Chrome
- [x] LibreWolf
- [x] Tor Browser
- [x] Discord
- [x] Zoom
- [x] Private Internet Access VPN

## Development/Making
- [x] OpenSCAD
- [x] PrusaSlicer
- [x] Podman Desktop
- [x] VS Code
- [x] Boxes
- [x] Go
- [x] Node

### Setup
```bash
# Install Zsh and set it as the default
sudo dnf install zsh
chsh -s $(which zsh)

# Install and configure Libsecret as Git's global credential manager
sudo dnf install git-credential-libsecret
git config --global credential.helper libsecret
```

Once that was done, I also had to configure Visual Studio Code to use ZSH when opening a terminal, which I’ve never had to do in Mint (or MacOS at work), but that wasn’t too hard. Just had to update the `Terminal › Integrated › Default Profile: Linux` configuration in the VS Code settings to `zsh` and it started working as expected.

#### Sources
* https://fedoramagazine.org/set-zsh-fedora-system/
* https://discussion.fedoraproject.org/t/attention-git-credential-libsecret-for-storing-git-passwords-in-the-gnome-keyring-is-now-an-extra-package/18275

## Misc
- [x] LibreOffice
- [x] Draw.io
- [x] Waydroid
  - Required [additional setup](https://docs.waydro.id/faq/google-play-certification) for Google Play certification