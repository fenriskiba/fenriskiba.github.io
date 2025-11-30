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