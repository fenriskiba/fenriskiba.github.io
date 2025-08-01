# Fedora KDE
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

* Uses the old installer again (it's not bad, just not as good as what I saw in Fedora Workstation)
  * failed one randomly, retry fixed it
* initial system updates also had an error (restarted system then it showed that it failed)
  * again, retry succeeded
* KDE Discover
  * nice that it allows me to prioritize flathub
  * not particularly fond of the experience, but it's *fine*
  * had an option to enable google-chrome repo, but them wouldn't show it when I searched
    * had to either install via terminal or install flatpak (I chose the terminal)
* Restarted my system in response to Discover being slow to update (thought it might be another issue, but was just being slow)
  * didn't bring anything back up afterwards, so I had to hard restart my machine
* Had a lot of trouble figuring out keyboard shortcuts for switching workstations
  * searched through configs, but it the navigation is so unintuitive
* Defaulted to 32:9 aspect ratio for some reason
  * Still tries to display that way on login screen
    * Got this working, but had to deal with even more unintuitive KDE settings that weren't super clear (what is SDDM, why can't I change anything except the picture other than by apply existing settings, why doesn't it show the picture I changed it to?)
      * Also got confused by having separate configs for initial login and lock screen cause it isn't well explained.
* was able to reuse dev setup instruction from Fedora
  * didn't have to do anything for VS Code this time
* Chrome crashing randomly without error several times
  * one time wouldn't even start back up - had to restart the computer
* occasional "discover crashed" errors when restarting or unlocking
  * usually wasn't a problem, but not confidence inspiring
    * One time I did have to restart to get discover to open afterwards...
  * tried reporting it using the automated report tool, but it hung trying to put together the logs
* Print a PDF from Okular - defaults to greyscale???
* doesn't support changing hostname via GUI
  * https://bugs.kde.org/show_bug.cgi?id=259285
* Randomly shows notification switching between my two speakers when unlocking the machine