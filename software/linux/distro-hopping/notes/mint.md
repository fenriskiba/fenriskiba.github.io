# Linux Mint
- Unverified Flatpaks being hidden is bad, but not the end of the world since the only unofficial Flatpaks I want are still available as downloadable files.
  - Dolphin Emulator - The official build is custom Flatpak repo, but much simpler to just use the Flathub version.
    - Dolphin also seems to be working on taking control of the Flathub deployment and verifying it.
  - Zoom - The official release is a downloaded `.deb`, but I'm lazy and I know from experience the unverified Flatpak works.
- Nice to see a description of System Packages vs Flatpaks in the Software Manager.
  - Not a big fan of the way it describes the security or the size considerations though. It almost implies that the distro maintainers are inherintly more trustworthy than app devs and it says that sizes are bigger without any explanation as to why pr by how much.
    - It just seems to be an openly biased way of describing them to make Flatpaks seem like the worst option.

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
- [x] Genshin Impact
  - Didn't even try Bottles, just went straight to Twintail Launcher which worked great.
- [ ] Fall Guys
- [ ] StarCraft 2
- [x] Fire Emblem: Path of Radiance
  - Had to manually map controller and check Background Input in contoller settings.
- [x] Shadow of the Colossus

## Remote Connection
- [x] Steam Link - Device
  - Had a bit of weird flashing when trying to play Tunic, but otherwise worked.
    - Flashing seemed less severe when only one monitor connected to desktop, but didn't go away entirely.
  - Noticed network issues when connecting the Steam Link to my router, but not when connecting it to a switch closer to the desktop.
    - Probably not related to Linux in any way, but something that does present a problem.
- [ ] ~~Steam Link - Flatpak~~
  - Couldn't even find the desktop for some reason.
- [x] Sunshine/Moonlight
  - Didn't try the Flatpak.
  - Only problem is that if the screen is asleep it won't connect (it can be locked, but the screen needs to be awake).
- [x] RustDesk
  - Works great out of the box, but doesn't seem to have a simple way to have it run as a background service.
    - The computer is only available to be connected to if the RustDesk window is actively open.
    - There may be a systemd config way to enable this, but I don't care enough to try it.
  - For my use case, I can leave the screen on and just lock the machine, so Sunshine/Moonlight is the better option for *me* since it means I can.
    - However, for providing tech support or if you are willing to mess with the configs to get that background service functionality this does seems like the better option.
- [ ] ~~KasmVNC~~
  - Installed fine, but then threw an error after account creation.

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
- [ ] ~~Davinci Resolve~~
  - Neither the official installer nor davincibox worked
  - I did see alternate fixes for how to get it working on Mint, but they all said, "Delete these files. I don't know why it works, it just does!", which I don't really trust enough to try.
  - There were also some additional steps in the davincibox repo that I could try, but I don't think it's worth it.
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
- [ ] ~~Waydroid~~
  - Tried using a Wayland window with Weston, but it wouldn't load still
