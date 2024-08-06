# Distro Hopping

## Linux Mint

### Monitor Duplication
```bash
xrandr --output DP-0 --mode 3840x2160 --rate 60 --output DP-1 --same-as DP-0 --output HDMI-0 --same-as DP-0
```

https://github.com/linuxmint/cinnamon-screensaver/issues/210

```bash
#!/bin/bash

CAUGHT_SHUTDOWN="0"
trap handleShutdown SIGTERM

function handleShutdown()
{
    echo "caught shutdown SIGTERM signal"
    CAUGHT_SHUTDOWN="1"
    exit 0
}

dbus-monitor --session "type=signal,interface=org.cinnamon.ScreenSaver,member=ActiveChanged" | 
  while read MSG; do
    LOCK_STAT=`echo $MSG | awk '{print $NF}'`
    if [[ "$LOCK_STAT" == "member=ActiveChanged" ]]; then
        echo "was unlocked"
        xrandr --output DP-0 --mode 3840x2160 --rate 60 --output DP-1 --same-as DP-0 --output HDMI-0 --same-as DP-0
    fi

    if [ $CAUGHT_SHUTDOWN != "0" ]; then
        break
    fi
  done
```

![TODO](../../media/mint-startup-apps.png)

### Gaming
Steam works fine on all games I've tried:
* Classic SW: Battlefront 1&2
* Celeste
* Tales of Symphonia

[8BitDo Controller issues](https://gist.github.com/ammuench/0dcf14faf4e3b000020992612a2711e2)

> 1. Create a new file /etc/udev/rules.d/99-8bitdo-xinput.rules
> 2. Paste this udev rule in there, then save and exit the file: 
>   
>   ```bash
>     ACTION=="add", ATTRS{idVendor}=="2dc8", ATTRS{idProduct}=="3106", RUN+="/sbin/modprobe xpad", RUN+="/bin/sh -c 'echo 2dc8 3106 > /sys/bus/usb/drivers/xpad/new_id'"
>   ```
> 3. Run the following command in a terminal: `sudo udevadm control --reload`
> 4. Unplug and replug the controller if it was already plugged in, it might take a second if you have the bluetooth version

## Tuxedo OS
### Benefits
- Better Multimonitor Support
- Controller works ootb
  - This benefit is diminished by Mint Edge

### Issues
- Webcam issues
- Discover is a clear downgrade from Mint's Software Manager
- Trouble with apps respecting themes
  - https://github.com/prusa3d/PrusaSlicer/issues/10657
- MFA Apps don't always respect default browser

## Fedora

### Git Credentials in libsecret

https://discussion.fedoraproject.org/t/attention-git-credential-libsecret-for-storing-git-passwords-in-the-gnome-keyring-is-now-an-extra-package/18275

```bash
sudo dnf install git-credential-libsecret

git config --global credential.helper libsecret
```

### Installing ZSH

https://fedoramagazine.org/set-zsh-fedora-system/

```bash
sudo dnf install zsh

chsh -s $(which zsh)
```

### Extensions
* Add to Desktop
  * Technically not supported, but it worked
* AppIndicator and KStatusNotifierItem Support
* Dash to Dock
* Desktop Icons NG (DING)
* Freon
* Tiling Assistant
* Wallpaper Slideshow

### Login Loop
Decided that I'd rather move onto try PopOS than try and solve it. Most of the info I saw suggested it's either a Wayland issue or a Desktop issue.

If it's a Wayland issue, then I'd rather find a more stable base rather than the experimental base Fedora uses.

If it's a Desktop issue, it's probably because of extensions and I'd rather not deal with a system that doesn't let me customize it like that.