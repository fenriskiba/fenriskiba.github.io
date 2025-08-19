# Tuxedo OS
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

* Initial Setup: Boot USB crashed after checking windowing server
  * Worked fine after a restart
* Had to Disable Secure Boot
  * https://www.tuxedocomputers.com/en/What-you-always-wanted-to-know-about-Secure-Boot.tuxedo
* Discover not showing all .deb options?
  * Steam .deb was missing, which for now is fine, but was weird since that's the official package still and Tuxedo isn't Flatpak only
* Dev setup was the same as Mint
* A lot of pre-installed apps I don't need
  * Mostly not a problem, but there were a few that were weird like Nextcloud Desktop
* Minor Annoyance: Doesn't consistently focus login password textbox
* Had issues logging in one day for some reason
  * needed to restart machine
  * atm not sure why, could be either an update issue (had updates requiring restart after I got on) or a KVM issue (switched back to this machine from work laptop right before it happened)
  * 8/15 update: definitely from the KVM, was able to login, it just didn't show that any characters were being typed
    * Lock screen also didn't turn off monitor and still didnt show typed characters when locked after that until after restart
  * 8/18 update: happened again when plugging in USB drive before logging in, maybe something weird with how it handles certain usb devices?
* one chrome crash
  * hopefully it stays at that instead of doing what fedora kde did