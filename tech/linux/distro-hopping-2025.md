<!-- omit from toc -->
# Distro Hopping 2025
Planning to build a new PC, and want to try again after having issues in 2024. The goal will be to spend a month with each distro before moving on to the next. I may add or remove distros based on early impressions or issues I encounter with installation.

**Table of Contents:**
- [Distros I plan to try](#distros-i-plan-to-try)
  - [Note about Ubuntu](#note-about-ubuntu)
- [My Use Case](#my-use-case)
  - [How I use my computer](#how-i-use-my-computer)
  - [Recommending it to others](#recommending-it-to-others)
- [Pre-Check: Running in a VM](#pre-check-running-in-a-vm)
  - [VM Test Results](#vm-test-results)
- [Re-Evaluating My Hardware Setup](#re-evaluating-my-hardware-setup)
- [Running Each Distro](#running-each-distro)
  - [Linux Mint](#linux-mint)

## Distros I plan to try
* [Linux Mint](distro-hopping-2024.md) (baseline)
* [Fedora Workstation](https://fedoraproject.org/workstation/)
* [Fedora KDE](https://fedoraproject.org/spins/kde)
* [Tuxedo OS](https://www.tuxedocomputers.com/en/TUXEDO-OS_1.tuxedo)
* [openSUSE Tumbleweed](https://www.opensuse.org/#Tumbleweed)
  * Will determine Desktop Environment based on experience with other distros.
* [Pop!_OS](https://pop.system76.com/)
  * Will hold off until a full release of Cosmic Desktop.
* ~~[Fedora Cinnamon](https://fedoraproject.org/spins/cinnamon)~~
* ~~[Nobara](https://nobaraproject.org/)~~
* ~~[PikaOS](https://wiki.pika-os.com/en/home)~~
* ~~[Garuda Linux](https://garudalinux.org/)~~
* ~~[EndeavourOS](https://endeavouros.com/)~~
* ~~[CachyOS](https://cachyos.org/)~~
* ~~[Bazzite](https://bazzite.gg/)~~

### Note about Ubuntu
Depending on how my experience with other distros goes, I may or may not try Ubuntu or one of its official flavors as well. I'm not a big fan of Canonical packaging many Snaps independent of developer builds, as it can lead to issues being misdirected and cause general confusion around support (ex. [Steam Snap](https://www.omgubuntu.co.uk/2024/01/valve-dont-recommend-ubuntu-steam-snap) and [OBS on Fedora Flatpak](https://gitlab.com/fedora/sigs/flatpak/fedora-flatpaks/-/issues/39)), nor do I care for the way they try to prevent alternative public hosting by keeping the hosting software proprietary and only enabling an override rather than an addition.

While Flathub has become the defacto default for Flatpak hosting, it is not the only option since the hosting software is based on an open standard. A clear example would be Fedora Flatpak, which, while I disagree with their focus on re-packaging apps, I appreciate having the alternative hosting for packages verified to work with the system. Flatpak also seems to have more support from developers, reducing the need for third-party packaging (the challenges of which are also partially mitigated through [Flathub marking them as unverified](https://docs.flathub.org/docs/for-users/verification)). For these reasons, I'd prefer a distribution that uses Flatpak (preferably with Flathub) out-of-the-box for modern package installation.

That being said, I have found [a guide to setting up GNOME Software and Flatpak on Ubuntu](https://www.howtogeek.com/how-and-why-to-install-flatpak-software-packages-on-ubuntu/), so I do consider that an acceptable compromise if I find myself enjoying the GNOME experience and otherwise frustrated with other distros running GNOME. I'd rather not go down this route because of the need for additional setup using a terminal. While I am comfortable in a terminal, I prefer being able to honestly tell people that you don't need it for a good experience with Linux.

## My Use Case
One of the great things with Linux is the variety of options available, but that also means that not every option is for everyone. Just cause a certain distro isn't for me, doesn't make it bad. Honestly, there are a lot of distros I'd be interested in exploring if it weren't for the fact that I want something [easy to use without technical experience](#recommending-it-to-others).

With that in mind, this is the context of how I'll be evaluating these options. If you are interesting in using my experience to help choose a Linux distro, please keep this in mind in case your use case differs from mine.

### How I use my computer
These are the kinds of tasks I'll be performing with them that could impact my experience.

* I don't mind some customization, but I want to keep it fairly light and I'd like to keep it to using graphical tools if I can.
  * I'm all for adding a few extensions so that I can use my computer the way I like, but I'd like it to be a good experience out of the box with just a few small tweaks to suite my preferences.
  * While I am comfortable in a terminal, I prefer being able to honestly tell people that you don't need it for a good experience with Linux.
* Light Gaming (both directly on system and with a Steam Link)
  * Not really a competitive gamer, so I'm not too worried about anti-cheat issues, but I do play some games.
  * May also try some Gamecube/PS2 era emulation, but not entirely sure yet.
  * Hoping I can get VR working, but there are some potentially confounding hardware issues with my setup.
    * My desktop sits in separate closet and I use a USB-over-ethernet adapter that I have been having some signal integrity issues with to connect to it from my desk.
* 3D Printing with PrusaSlicer (or if it ever gets published to Flathub, OrcaSlicer)
  * I do a bit of 3D modeling as well, but since that's in Onshape (a browser based CAD tool) it shouldn't really matter what distro I'm in.
* Light Development tasks
  * Containers with Podman
  * Go and Node development
* [Mirroring Multiple Displays](https://forums.linuxmint.com/viewtopic.php?t=418626)
  * This is the one exception where I will be comfortable using a terminal/shell script to get things working, as I consider the issue an edge-case and not something most people would need to work through for a good experience with Linux.
  * This has also been severely de-prioritized, to the point where I'm not entirely sure if I'm going to bother testing it on all distros. My setup has changed due to a faulty Icron USB Extender, so I now only have two displays that need to be mirrored.
* Remote connectivity for thin clients
  * See [Re-Evaluating My Hardware Setup](#re-evaluating-my-hardware-setup) for details

### Recommending it to others
In addition to my own use case, I'd also like something that I can recommend to anyone new to Linux. Being able to say "I use this everyday, it's really stable, and mostly just works" is really powerful. Being able to give people a clear demo on my own personal machine and say "no, I didn't need a terminal to get any of this working" is a big thing that could help anyone interested in switching to Linux but anxiously thinking that you need to be technical to use it.

I'm not necessarily trying to find a "one size fits all" distribution, so much as one that I think isn't going to be especially uncomfortable for anyone open to making the switch to Linux and that doesn't require any significant technical experience to use.

<!-- omit from toc -->
#### Accessibility Tools
I personally don't have any accessibility needs when using a computer and I'm not going to consider it a deal breaker, but keeping in line with my goal of being able to recommend the distro I use to anyone, I should also be able to recommend it to those with visual impairments, people unable to use a mouse (but still don't want to use a Terminal), or otherwise need some kind of accessibility accommodations.

That being said, I'm not exactly an accessibility expert, so I can't give a complete perspective on this. I'll look into it a bit as I try each distro, and see if there is any community sentiment on the matter, but any accessibility comments I make will need to come with the disclaimer that I am not fully trained on these issues.

## Pre-Check: Running in a VM
Before getting into the full distro hopping experience, I spent a few days running each OS in a VM to get a feel for the desktop environment and see if there are any obvious deal breaker issues. I mostly just looked through the desktop environment settings a bit, checking out what graphical package manager it uses, and generally getting a first impression of the OS. 

I'm only going to record notes here for distros that stand out in some way or that outright fail, so I can document *why* they failed rather than just cross them off the list and move on. I also be skipped Linux Mint, Fedora Workstation, and Tuxedo OS, as I feel I have a solid enough understanding of them from my daily use of Mint and my [2024 attempt at distro hoping](/tech/linux/distro-hopping-2024.md) to say that they are worth checking out for the full month.

### VM Test Results
Overall, the results aren't too surprising. No Arch based distros survived. Mostly looking at GNOME and KDE for the desktop environment. The biggest limitation seems to be my goal of using a distro I can recommend to non-technical users. Kind of disappointing that's what it is rather than my own use case, but I don't really want to abandon that objective until Linux is more relevant as a competitor to Windows and Mac OS in the desktop space.

* **Fedora Cinnamon** was eliminated for `dnfdragora` being it's only graphical package manager out of the box.
  * I may bring it back later and manually install GNOME Software just to see a non-Mint implementation of Cinnamon.
* **Nobara** has been eliminated. The main version of it only includes a terrible custom software manager.
  * In the GNOME version, the fact that their custom software pops up to update things instead of just leaving that to GNOME Software (which is still there) is unnecessary noise that I just found annoying. At least at an initial inspection, it didn't seem to add anything to the GNOME experience, so all that was left that I saw to redeem it was the Nobara Tweaks app, which looks like it was thrown together at a code jam and then never improved again.
  * Didn't even bother checking out the KDE version after the GNOME version.
* **PikaOS** was eliminated because I couldn't even get the boot-able ISO to run in the VM.
* **Garuda** definitely doesn't play nice with my goal of having a distro that I can honestly recommend to less technical friends. If I were the only person I was thinking about, I'd probably be a bit more open to trying it, but I don't want to abandon that objective without a clear reason.
  * I tried Mokka and Gnome DEs, and was interested in Dr460nized and Cinnamon as well, but decided to save time after I saw the same issues in both.
  * Initial setup does pop into Terminal for updates. It does keep it simple and straight-forward, but would still make it difficult for me to say "yup, it's super friendly, even if you aren't very technical" since that would scare non-technical users.
  * Initial software setup is nice (simple checkboxes with some recommendations), but gives so many options that it could scare less technical users. Some of the options it gives (like graphical software managers) also aren't particularly clear for less technical users.
  * No Flatpak support out of the box and only really has a good graphical software manager if you install GNOME Software (which is does give a checkbox for during setup) and configure it with Flatpak.
* **EndeavourOS** is very similar to Garuda (Arch based distros maintain the Arch philosophy after all). Tried the KDE version, which doesn't come with Discover (or any other graphical software manager) pre-installed. It did have a post-install tool that (eventually) included installing Flatpak, but only after a lot of other steps, and only made sense if you know what Flatpak is. Would be interesting if I didn't want to be able to recommend the same distro I use to less technical folks, but for now it is a pass.
* **CachyOS** is the same as the other Arch based distros, so not too much to say. This one does have it's own graphical package manager, but it's still not great. It also left the shortcut to KDE Discover in the menu bar, even though it isn't installed, which doesn't give the best impression of its polish.
  * One thing I did find interesting with Cachy, that I didn't think to consider previously, is that it does consider accessibility, but not by default. When choosing some things like the desktop environment, [it gives an option for accessibility tools](/media/linux/cachyOS_a11y.png ':ignore'), but it's not checked by default. While I like that it does consider accessibility needs, I dislike that it doesn't consider them important enough to have available by default.
* **Bazzite** was removed because I didn't realize it was an immutable distro. While I think immutable distros make a lot of sense in the server and handheld spaces, I'm not yet convinced they make sense in the desktop space.
  * There are still a lot of tools that either aren't available as a Flatpak or that the unofficial Flatpak doesn't work. I'm also not sure some tools I use (Gparted, Raspberry Pi Imager, etc.) are even viable in a sandboxed format like Flatpak.
  * I'd also rather not need to use a container to run development tools. I'm sure I could run the Go compiler that way, but having it installed natively is going to be simpler.
  * I'll be happy if I'm proven wrong and the tooling improves to the point where it is viable, since the security and reliability of immutable distros would be great in the desktop space. However, I'll wait for SteamOS to be the distro to test it since that'll have a lot more cultural relevance to try and make it work.

## Re-Evaluating My Hardware Setup
?> **Note:** If all you care about is the Linux distro evaluations, go ahead and skip this section. I'm mainly just documenting it here for some additional context around my hardware setup, as it is a bit unconventional and could have an impact on my experience with these distributions.

After doing the VM test, I started encountering some hardware issues causing me to re-evaluate my setup before proceeding.

My desktop lives in a server rack in a closet and I use fiber-optic DisplayPort/HDMI cables and Icron USB-over-Ethernet adapters to connect to it from my home office and gaming desk (inspired by Linus Tech Tips). Prior to this however, my living room TV was also included in this setup for couch gaming, but I started encountering instability in the signal going over one of the Icron extenders. I was able to confirm that the Icron extender itself was defective, which left me with a few options:

* Spend >$1000 on a new Icron extender and maintain my existing setup.
  * Obviously the most expensive solution but it has the fewest compromises in terms of capabilities.
  * Default display can be inconsistent and annoying when doing things like installing a new distro.
  * My living room TV has some weird sleep states that it seems to switch between at random, which can cause issues.
  * I'm stuck with the HDMI and DisplayPort versions of the cables I currently have run and may not get the full capabilities of each display.
* Remove the living room TV from the setup.
  * The cheapest (and quickest) solution and the biggest compromise can mostly be covered by a Steam Link.
  * Saves me from the the weird sleep states my TV goes through.
  * Still has some issues with the default display, the DisplayPort versions, and display capabilities, but does reduce it a bit.
* Go back to a traditional desktop setup.
  * Not as expensive as another Icron, but to do it the way I want still wouldn't be cheap (probably in the range of $500-$600).
  * There are some [aesthetic advantages](https://starforgesystems.com/products/frieren-case-bundle) that I would be really excited to explore.
  * Having the case and all its I/O right at my desk can be rather convenient (and as I've discovered, more reliable).
  * Could still use a Steam Link for couch gaming, but would need to figure out some kind of thin client for my office.
  * Leaves me with a server rack that doesn't make as much sense anymore.
    * It still has some use, just not enough to justify a rack instead of a normal case.

For now, I'm going to keep the rack mount setup with only the office and living room and hook up an old Steam Link I have in the living room for couch gaming. I'll also be investigating and testing options for a thin client on an Intel NUC I have lying around. That way I have the fewest compromises while distro hopping and have the opportunity to test the tools for all three options. Then once I've selected the distro I like and want to run long term, I'll come back to this question and re-evalute my hardware setup again with more information.

## Running Each Distro
### Linux Mint
* First time with Linux Mint 22 (coming from 21.3 Edge)
* Right away, I have issues caused by Mint being on an older kernel.
  * Was able to resolve it fairly easily with a pre-installed GUI to [update to a newer kernel](https://www.fosslinux.com/138008/how-to-install-and-try-different-linux-kernels-in-linux-mint.htm).
  * Not the first time I've had issues due to an old Kernel:
    * Framework Wifi (plus Framework trackpad issues before I got to it)
    * 8BitDo Controller from previous Distro Hopping Attempt
  * I appreciate Mint's focus on stability, but thats only valuable if it works in the first place. Staying on an older kernel means that may not happen with newer hardware.
  * I don't want something like this to be a disqualifier, especially since they do provide an easy way to fix it, but it still makes it hard to recommend to less technical users who wouldn't think to update the kernel.
* From what I can tell, Mint does a decent job with accessibility, having build the tools right into the system configurations.
* Tried running steam link. Network test was fine, but acted like network was an issue when actually trying to stream (before even getting to game).
  * Not sure if the issue is with Mint, Steam, or the Steamlink. Steamlink hardware is pretty old and abandonded by valve.
  * Since trying, I've been having issues running steam. Very similar to [this issue in the Mint Forums](https://forums.linuxmint.com/viewtopic.php?t=400351), except the fix there doesn't help. ~~Going to try fully purging Steam files and see if that fixes it. If it does then I may try steamlink again.~~
    * I can get things working by launching from software manager or right clicking and going straight to library.
    * Was also able to get it working by just removing the Steam icon, which caused it to default to the "Install Steam" icon, which opens Steam fine.
  * Going to just ignore it for now and try again with the next distro. If it's a problem there too, then it's probably Steam/the Steam Link, at which point this probably just isn't a viable solution right now.