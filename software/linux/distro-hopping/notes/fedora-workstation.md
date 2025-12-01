# Fedora Workstation Notes
## Dev Setup
```bash
# Install Zsh and set it as the default
sudo dnf install zsh
chsh -s $(which zsh)

# Install and configure Libsecret as Git's global credential manager
sudo dnf install git-credential-libsecret
git config --global credential.helper libsecret
```

Once that was done, I also had to configure Visual Studio Code to use ZSH when opening a terminal, which I’ve never had to do in Mint (or MacOS at work), but that wasn’t too hard. Just had to update the `Terminal › Integrated › Default Profile: Linux` configuration in the VS Code settings to `zsh` and it started working as expected.

### Sources
* https://fedoramagazine.org/set-zsh-fedora-system/
* https://discussion.fedoraproject.org/t/attention-git-credential-libsecret-for-storing-git-passwords-in-the-gnome-keyring-is-now-an-extra-package/18275

## To Be Organized
* Tried using Elden Ring for GPU testing, but it wouldn't run
  * I remember it working on Mint, so I'll try again right before switching and then try it on Mint
* Waydroid setup was super simple, but quickly uninstalled it due to issues with google play certification leading to an annoying alert noise
  * waydroid did have a solution to this which worked fine: https://docs.waydro.id/faq/google-play-certificatio
  * Need to be careful about Waydroid, since it keeps running in the background with no sign of doing so and uses up 1-2GB of memory
* Davinci Resolve apparently has been broken on Fedora since Fedora 40 (currently on Fedora 42)
  * https://forum.blackmagicdesign.com/viewtopic.php?f=21&t=199180
  * Didn't care enough to try any of the workaround, since Kdenlive exists in case I ever do need to do any video editing
* Unexpected finding: GNOME Software is better for downloaded flatpaks (ie OrcaSlicer)
* Steam Link works and will probably work with Mint as well (assuming the problem was the GUI acceleration in the Steam UI)
  * Steam UI seems a bit laggy, but once in game it was fine

## Applications
### Already Use
- [ ] Steam
- [ ] Cheese
- [ ] ClamTK
- [ ] CPU-X
- [ ] digiKam
- [ ] Discord
- [ ] Draw.io
- [ ] Flatseal
- [ ] GIMP
- [ ] Chrome
- [ ] GParted
- [ ] Handbrake
- [ ] LibreWolf
- [ ] OpenSCAD
- [ ] Pinta
- [ ] PIA
- [ ] PrusaSlicer
- [ ] Psensor
  - [ ] Vitals - GNOME Extension
  - [ ] Mission Center
- [ ] LibreOffice
- [ ] Podman Desktop
- [ ] Tor Browser
- [ ] VS Code
- [ ] VLC
- [ ] Zoom
- [ ] Boxes