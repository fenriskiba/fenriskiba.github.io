# Linux Mint Notes
## Dev Setup
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

### Sources
* https://techviewleo.com/install-and-use-zsh-with-oh-my-zsh-on-linux-mint/
* https://www.softwaredeveloper.blog/git-credential-storage-libsecret
* https://www.baeldung.com/ops/podman-pull-image-docker-hub#pulling-images-without-fully-qualified-names

## TODO: Support
Try to review basic support for all distros and add in those considerations