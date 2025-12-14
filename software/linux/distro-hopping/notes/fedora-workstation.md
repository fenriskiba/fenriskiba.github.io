# Fedora Workstation
## Gaming
- [x] Steam

### Steam Games
- [x] Celeste
- [ ] Star Wars Battlefront (classic)
- [ ] Tunic
- [ ] Cyberpunk 2077
- [ ] Elden Ring

### Other Games
- [ ] Genshin Impact
- [ ] Fall Guys
- [ ] Overwatch
- [ ] Fire Emblem: Path of Radiance
- [ ] Shadow of the Colossus

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
- [ ] Davinci Resolve
  - [Standard Install has been broken since Fedora 40.](https://forum.blackmagicdesign.com/viewtopic.php?f=21&t=199180)
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