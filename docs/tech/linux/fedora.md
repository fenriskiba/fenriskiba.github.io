# Fedora

## Git Credentials in libsecret

https://discussion.fedoraproject.org/t/attention-git-credential-libsecret-for-storing-git-passwords-in-the-gnome-keyring-is-now-an-extra-package/18275

```bash
sudo dnf install git-credential-libsecret

git config --global credential.helper libsecret
```

## Installing ZSH

https://fedoramagazine.org/set-zsh-fedora-system/

```bash
sudo dnf install zsh

chsh -s $(which zsh)
```

## Extensions
* Add to Desktop
  * Technically not supported, but it worked
* AppIndicator and KStatusNotifierItem Support
* Dash to Dock
* Desktop Icons NG (DING)
* Freon
* Tiling Assistant
* Wallpaper Slideshow