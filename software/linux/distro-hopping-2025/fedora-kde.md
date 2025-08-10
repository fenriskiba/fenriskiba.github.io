# Fedora KDE
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

I'll be blunt on this one: my experience with Fedora KDE was a mess. 

To begin with, I'm not particularly fond of KDE as a desktop. I don't think it's a bad desktop by any stretch, but it's not for me and I don't think it's organized well enough for me to *want* to recommend to someone less technical. I think I *could* recommend it, but I'd rather recommend something where I can find the setting I want without the search bar or Google.

In addition to that though, This was the buggiest operating system experience I have had in years. It really makes me wonder if Fedora KDE (which I assume is one of the larger distributions with KDE) is partially responsible for KDE's continued reputation of bugginess. I never encountered any of these bugs in Tuxedo OS, so I honestly don't believe these are a KDE issue so much as a Fedora KDE issue.

## Fedora Setup
* Uses the old installer again (it's not bad, just not as good as what I saw in Fedora Workstation)
  * failed one randomly, retry fixed it
* initial system updates also had an error (restarted system then it showed that it failed)
  * again, retry succeeded
* Discover allows me to prioritize flathub
* was able to reuse dev setup instruction from Fedora
  * didn't have to do anything for VS Code this time

## KDE Experience
* KDE Discover
  * not particularly fond of the experience, but it's *fine*
  * Weird organization of configs
    * Settings (mixed into the same menu as app categories???) > top-right ellipses > Configure Updates
* Had a lot of trouble figuring out keyboard shortcuts for switching workstations
  * searched through configs, but it the navigation is so unintuitive
* Got confused by having separate configs for initial login and lock screen cause it isn't well explained, the login screen one didn't show any signs of changing in the setting app, and only one ever shows up when searching.
* doesn't support changing hostname via GUI
  * https://bugs.kde.org/show_bug.cgi?id=259285
* Minor Annoyance: Apply Buttons
* Minor Annoyance: Numlock

## Misc Issues
* KDE Discover
  * had an option to enable google-chrome repo, but them wouldn't show it when I searched
    * had to either install via terminal or install flatpak (I chose the terminal)
    * Hard to tell if this is a Discover issue or a "fedora misconfigured Discover" issue
  * occasional "discover crashed" errors when restarting or unlocking
    * usually wasn't a problem, but not confidence inspiring
      * One time I did have to restart to get discover to open afterwards...
    * tried reporting it using the automated report tool, but it hung trying to put together the logs
* Restarted my system in response to Discover being slow to update (thought it might be another issue, but was just being slow)
  * didn't bring anything back up afterwards, so I had to hard restart my machine
* Defaulted to 32:9 aspect ratio for some reason
  * Still tries to display that way on login screen
    * Got this working, but had to deal with even more unintuitive KDE settings that weren't super clear (see above)
* Chrome crashing randomly without error several times
  * one time wouldn't even start back up - had to restart the computer
* Randomly shows notification switching between my two speakers when unlocking the machine