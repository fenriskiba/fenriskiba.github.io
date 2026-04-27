# An Easy TrueNAS Setup
* Easy, not intuitive
  * HexOS has value as an intuitive solution, but I don't think it's necessary for anyone willing to follow a tutorial.
* Starting Point:
  * https://www.youtube.com/watch?v=67KtKoW4IM0
* Improvements to the tutorial
  * Don't use the IP Address, use the [mDNS (hostname.local)](https://en.wikipedia.org/wiki/.local)
    * Static IP may not be necessary for a lot of users, but can still be a good practice in case of products that don't support mDNS.
      * I need it for Jellyfin, because my TV doesn't support it
    * May also be able to just us a Tailscale Magic DNS a lot of the time
* Additional and important tools
  * Syncthing for encrypted buddy backup
  * Tailscale for easy external access