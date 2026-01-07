# DISTRO NOTES TEMPLATE
- Unverified Flatpaks being hidden is bad
  - Dolphin Emulator (official build is custom Flatpak repo, but much simpler to just use the Flathub version)
  - Zoom (official is a downloaded .deb, I'm just lazy and I know from experience it works)
- Nice to see a description of System Packages vs Flatpaks in the Software Manager
  - Not a big of the way it describes the security though. It suggests that the distro maintainers are inherintly more trustworthy than app devs.

## Gaming
- [x] Steam

### Steam Games
- [x] Celeste
- [x] Star Wars Battlefront (classic)
- [x] Tunic
  - Didn't see the alt tab issues that were present in Fedora
- [x] Cyberpunk 2077
- [x] Elden Ring
  - Didn't need the launcher option like in Fedora.
  - Controller still didn't work.

### Other Games
- [ ] Genshin Impact
  - [x] Twintail Launcher
- [ ] Fall Guys
- [ ] StarCraft 2
- [x] Fire Emblem: Path of Radiance
  - Also had to manually map controller and check Background Input in contoller settings.
- [x] Shadow of the Colossus

## Remote Connection
- [ ] Steam Link - Device
- [ ] Steam Link - Flatpak
- [x] Sunshine/Moonlight
  - Didn't try the Flatpak.
  - Worked out of the box no problem.
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
- [x] OBS
  - Same experience as with Fedora, except with the virtual camera.
  - Virtual camera didn't work at first, but when I came back to it later it seemed to work.
    - Wasn't able to get anything but a grey screen out of it when trying to stream to Discord, but I think that may be a Discord issue because I had the same results with my actual webcam.
- [ ] ~~VTube Studio~~
  - Same issue as Fedora

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