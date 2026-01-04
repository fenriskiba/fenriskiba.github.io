# DISTRO NOTES TEMPLATE
- Unverified Flatpaks being hidden is bad
- Description of System Packages vs Flatpaks avaialble is good
  - Not a big of the way it describes the security though. It suggests that the distro maintainers are inherintly more trustworthy than app devs.

## Gaming
- [x] Steam

### Steam Games
- [ ] Celeste
- [ ] Star Wars Battlefront (classic)
- [ ] Tunic
- [ ] Cyberpunk 2077
- [ ] Elden Ring

### Other Games
- [ ] Genshin Impact
  - [x] Twintail Launcher
- [ ] Fall Guys
- [ ] StarCraft 2
- [ ] Fire Emblem: Path of Radiance
  - [x] Dolphin Emulator
    - Had to enable unverified Flatpaks
- [ ] Shadow of the Colossus
  - [x] PCSX2

## Remote Connection
- [ ] Steam Link - Device
- [ ] Steam Link - Flatpak
- [ ] Sunshine/Moonlight
- [ ] KasmVNC

## Media
### Images
- [x] digiKam
- [x] GIMP
- [x] Pinta

### Video
- [x] VLC
- [x] *Web Cam* - Cheese
- [x] Handbrake

#### Streaming
- [x] OBS - *installed not tested*
- [ ] VTube Studio

#### Editing
- [ ] Davinci Resolve
- [x] Kdenlive

## System Tools
- [x] ClamTK
- [x] CPU-X
- [x] Flatseal
- [x] GParted
- [x] *Thermal Monitoring Tool* - Psensor

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
sudo apt install zsh -y
sudo chsh -s /usr/bin/zsh $USER

# Restart the computer so that the change will take effect (could probably just log out and in again, but whatever)

# Install Libsecret
sudo apt-get install libsecret-1-0 libsecret-1-dev

# Build Libsecret
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make

# Set Git's global config to use Libsecret to manage credentials
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret

# Open Podman Config
sudo nano /etc/containers/registries.conf
# In Nano, add "unqualified-search-registries = ["docker.io"]" to the config
```

#### Sources
* https://techviewleo.com/install-and-use-zsh-with-oh-my-zsh-on-linux-mint/
* https://www.softwaredeveloper.blog/git-credential-storage-libsecret
* https://www.baeldung.com/ops/podman-pull-image-docker-hub#pulling-images-without-fully-qualified-names

## Misc
- [x] LibreOffice
- [x] Draw.io
  - Installed official .deb from Github instead of the unofficial Flatpak.
- [ ] Waydroid