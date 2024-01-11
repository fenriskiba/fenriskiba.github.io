# Linux Distro Hopping 2024
Every month in 2024, I will be trying out a different Linux distro to see what meets my needs. I'll be documenting my findings here to help me remember the ups and down and so that anyone else can hopefully find what they need.
 
1. Linux Mint
2. Fedora KDE
3. Fedora Gnome
4. Tuxedo OS
5. Pop OS
6. Elementary OS
7. Manjaro
8. Debian
9. Nobara
10. ZorrinOS
11. OpenSUSE
12. 

## Linux Mint (Baseline)

```bash
xrandr --output DP-0 --output DP-1 --same-as DP-0 --output HDMI-0 --same-as DP-0
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
        xrandr --output DP-0 --output DP-1 --same-as DP-0 --output HDMI-0 --same-as DP-0
    fi

    if [ $CAUGHT_SHUTDOWN != "0" ]; then
        break
    fi
  done
```

![TODO](https://live.staticflickr.com/65535/53449541784_07c84669f8_o.png)

[8BitDo Controller issues](https://gist.github.com/ammuench/0dcf14faf4e3b000020992612a2711e2)
