# Fedora Workstation
* Initial thoughts on Gnome
  * Disclaimer about not digging into the politics of the Gnome Foundation, only my impression of things
  * I like how simple they keep it and the high level of Gnome
  * Not a fan of how heavily opinionated they are about small, yet impactful things like desktop icons and app indicators
* Fedora would be nice since they have Framework Support
* Install process was surprisingly streamlines (more-so than when trying with a VM)
* Not a fan of Windows-like updates where the update happens while restarting instead of in the background and just restart to take effect
* Some buggyness when reorganizing a lot of apps around in the Show Apps view
  *  only started after moving multiple apps so not a big deal
* Weird issue with PrusaSlicer focus
  * will keep an eye on it, may have only been during initial startup
* same issue with Steam and Steam Link as Mint when using the rpm
  * Using Flatpak works
  * Still no luck with VR

## Setup

### Extensions
* [Add to Desktop](https://extensions.gnome.org/extension/3240/add-to-desktop/)
  * Technically wasn't supported on the version of Gnome I was on, but it worked fine.
* [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/)
* [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
* [Desktop Icons NG (DING)](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/)
* [Tiling Assistant](https://extensions.gnome.org/extension/3733/tiling-assistant/)
* [Wallpaper Slideshow](https://extensions.gnome.org/extension/6281/wallpaper-slideshow/)
* [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)

### Dev Tools
#### Git Credentials in libsecret
I found a [fairly straightforward guide](https://discussion.fedoraproject.org/t/attention-git-credential-libsecret-for-storing-git-passwords-in-the-gnome-keyring-is-now-an-extra-package/18275) for setting up a Git credential manager, that basically abbreviated the setup to two simple commands:

```bash
sudo dnf install git-credential-libsecret

git config --global credential.helper libsecret
```

#### Installing ZSH
Similarly, ZSH was a [pretty simple setup](https://fedoramagazine.org/set-zsh-fedora-system/) in only two commands:

```bash
sudo dnf install zsh

chsh -s $(which zsh)
```

Setting ZSH in VS Code: Terminal › Integrated › Default Profile: Linux