# Fedora Workstation
## Gaming
- [x] Steam
  - Proton in general seems to be having audio issues with my office speaker. Works fine in the game room though.

### Steam Games
- [x] Celeste
- [x] Star Wars Battlefront (classic)
- [x] Tunic
  - Steam Link Issues
  - Alt Tab Issues in Fullscreen (Not a problem in windowed mode)
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
- [ ] ~~Steam Link~~
  - Is a bit laggy in the Steam Big Picture Mode, but once in Celeste it worked fine.
  - Tried playing Tunic, but ran into issues getting it to display. Searching the problem suggests it may not just be a Linux issue.
- [ ] Sunshine/Moonlight
  - [ ] Wired
  - [ ] Wifi

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
- [ ] OBS
- [ ] VTube Studio

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
  - Required [additional setup](https://docs.waydro.id/faq/google-play-certificatio) for Google Play certification