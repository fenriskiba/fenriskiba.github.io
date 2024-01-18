# Linux Mint 2024
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

![TODO](/media/mint-startup-apps.png)

[8BitDo Controller issues](https://gist.github.com/ammuench/0dcf14faf4e3b000020992612a2711e2)
