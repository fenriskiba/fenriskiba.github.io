# Fedora KDE
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

I'll be blunt on this one: my experience with Fedora KDE was a mess. 

To begin with, I'm not particularly fond of KDE as a desktop. I don't think it's a bad desktop by any stretch, but it's not for me and I don't think it's organized well enough for me to *want* to recommend to someone less technical. I think I *could* recommend it, but I'd rather recommend something where I can find the setting I want without the search bar or Google.

In addition to that though, This was the buggiest operating system experience I have had in years. It really makes me wonder if Fedora KDE (which I assume is one of the larger distributions with KDE) is partially responsible for KDE's continued reputation of bugginess. My experience with Tuxedo OS was a lot less buggy, so I honestly don't believe these are a KDE issue so much as a Fedora KDE issue.

## Fedora KDE Setup
While [the installer for Fedora Workstation seems to have been updated](/software/linux/distro-hopping-2025/fedora-workstation?id=fedora-setup), Fedora KDE was unfortunately still on the older installer. It's not a real problem, but it does serve as a reminder that Fedora KDE does *not* receive the same development effort as Fedora Workstation; even if it is advertised more than the other spins.  
I also ran into the first bug while trying to run through the installer. The installer crashed partway into the installation, but re-opening the installer in the boot OS and re-running it was perfectly fine.

Once I started up the machine for the first time, I found that, for some reason, Fedora KDE decided to default my display resolution to a 32:9 aspect ratio (I'm on a 43" 4k 16:9 display). It wasn't hard to get that fixed for my normal desktop experience, but I did have some trouble finding the configs to fix that in the lock and login screens (I'll talk about that more [below](#kde-experience)). Once I did find the configs, it was pretty easy to fix there too, but I'm still not sure *why* it would possible think that made sense.

After finally getting to the point where I could use my desktop, I ran into errors trying to install the initial updates in Discover. Restarting the machine and trying again got everything working, but it wasn't very confidence inspiring encountering three fairly significant bugs before I even started installing applications.

From there, I was able to start setting up my own customizations and applications. While configuring app sources in Discover, I liked that I was able to prioritize Flathub over Fedora Flatpak. Unfortunately, the good gets balanced by more bugs, because I then enabled the "google-chrome" repo which didn't do anything. Even after restarting the computer again, I couldn't find the `.rpm` version of Chrome in Discover and had to go through Google's download page to get the official package installed (I'm too lazy to review the Chrome Flatpak repo, and don't want to use an unverified version of something as important as a browser without having done so.)

Aside from that, I was able to install all the rest of the applications I normally use perfectly fine and I was also happy to see that I could just reuse my [Dev Tools setup from Fedora Workstation](/software/linux/distro-hopping-2025/fedora-workstation?id=dev-tools) (not too surprising) without needing to set an extra config for VS Code.

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
  * occasional "discover crashed" errors when restarting or unlocking
    * usually wasn't a problem, but not confidence inspiring
      * One time I did have to restart to get discover to open afterwards...
    * tried reporting it using the automated report tool, but it hung trying to put together the logs
* Restarted my system in response to Discover being slow to update (thought it might be another issue, but was just being slow)
  * didn't bring anything back up afterwards, so I had to hard restart my machine
* Chrome crashing randomly without error several times
  * one time wouldn't even start back up - had to restart the computer
* Randomly shows notification switching between my two speakers when unlocking the machine