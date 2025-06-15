# Linux Distro Hopping 2025
In early 2025, I build a new desktop PC and decided to see what other Linux distros are like after using the same one for over a decade. The goal will be to spend a month with each distro before moving on to the next. I may add or remove distros based on early impressions or issues I encounter with installation.

## Distros I plan to try
* [Linux Mint](https://linuxmint.com/) (baseline)
* [Fedora Workstation](https://fedoraproject.org/workstation/)
* [Fedora KDE](https://fedoraproject.org/spins/kde)
* [Tuxedo OS](https://www.tuxedocomputers.com/en/TUXEDO-OS_1.tuxedo)
* [openSUSE Tumbleweed](https://www.opensuse.org/#Tumbleweed) (I will determine Desktop Environment based on experience with other distros.)
* [Pop!_OS](https://pop.system76.com/) (I will holding off until a full release of Cosmic Desktop is available.)
* ~~[Fedora Cinnamon](https://fedoraproject.org/spins/cinnamon)~~
* ~~[Nobara](https://nobaraproject.org/)~~
* ~~[Slimbook OS](https://slimbook.com/en/slimbook-os)~~
* ~~[PikaOS](https://wiki.pika-os.com/en/home)~~
* ~~[Elementary OS](https://elementary.io/)~~
* ~~[Zorin OS](https://zorin.com/)~~
* ~~[Garuda Linux](https://garudalinux.org/)~~
* ~~[EndeavourOS](https://endeavouros.com/)~~
* ~~[CachyOS](https://cachyos.org/)~~
* ~~[Bazzite](https://bazzite.gg/)~~

### Note about Ubuntu
<!-- TODO: Reorg as separate page for "Distros I'm not trying" with the following notes:
* Has *most* of the Gnome Extensions I needed
* Still needed to install Add to Desktop
* No Prusa Slicer in Snap Store -->
Depending on how my experience with other distros goes, I may or may not try Ubuntu or one of its official flavors as well. I'm not a big fan of Canonical packaging many Snaps independent of developer builds, as it can lead to issues being misdirected and cause general confusion around support (ex. [Steam Snap](https://www.omgubuntu.co.uk/2024/01/valve-dont-recommend-ubuntu-steam-snap) and [OBS on Fedora Flatpak](https://gitlab.com/fedora/sigs/flatpak/fedora-flatpaks/-/issues/39)), nor do I care for the way they try to prevent alternative public hosting by keeping the hosting software proprietary and only enabling an override rather than an addition.

While Flathub has become the defacto default for Flatpak hosting, it is not the only option since the hosting software is based on an open standard. A clear example would be Fedora Flatpak, which, while I disagree with their focus on re-packaging apps, I appreciate having the alternative hosting for packages verified to work with the system. Flatpak also seems to have more support from developers, reducing the need for third-party packaging (the challenges of which are also partially mitigated through [Flathub marking them as unverified](https://docs.flathub.org/docs/for-users/verification)). For these reasons, I'd prefer a distribution that uses Flatpak (preferably with Flathub) out-of-the-box for modern package installation.

That being said, I have found [a guide to setting up GNOME Software and Flatpak on Ubuntu](https://www.howtogeek.com/how-and-why-to-install-flatpak-software-packages-on-ubuntu/), so I do consider that an acceptable compromise if I find myself enjoying the GNOME experience and otherwise frustrated with other distros running GNOME. I'd rather not go down this route because of the need for additional setup using a terminal. While I am comfortable in a terminal, I prefer being able to honestly tell people that you don't need it for a good experience with Linux.

## My Use Case
One of the great things with Linux is the variety of options available, but that also means that not every option is for everyone. Just cause a certain distro isn't for me, doesn't make it bad. Honestly, there are a lot of distros I'd be interested in exploring if it weren't for the fact that I want something [easy to use without technical experience](#recommending-linux-to-others).

With that in mind, this is the context of how I'll be evaluating these options. If you are interesting in using my experience to help choose a Linux distro, please keep this in mind in case your use case differs from mine.

### How I Use My Computer
These are the kinds of tasks I'll be performing with my computer that could impact my experience with each distribution.

* I don't mind some customization, but I want to keep it fairly light and I'd like to keep it to using graphical tools if I can.
  * I'm all for adding a few extensions so that I can use my computer the way I like, but I'd like it to be a good experience out of the box with just a few small tweaks to suite my preferences.
  * While I am comfortable in a terminal, I prefer being able to honestly tell people that you don't need it for a good experience with Linux.
* Light Gaming (both directly on system and with a Steam Link)
  * Not really a competitive gamer, so I'm not too worried about anti-cheat issues, but I do play some games.
  * May also try some Gamecube/PS2 era emulation, but not entirely sure yet.
  * Hoping I can get VR working, but there are some potentially confounding hardware issues with my setup.
* 3D Printing with PrusaSlicer (or if it ever gets published to Flathub, OrcaSlicer)
  * I do a bit of 3D modeling as well, but since that's in Onshape (a browser based CAD tool) it shouldn't really matter what distro I'm in.
* Light Development tasks
  * Containers with Podman
  * Go and Node development
* [Mirroring Three Displays](https://forums.linuxmint.com/viewtopic.php?t=418626)
  * This is the one exception where I will be comfortable using a terminal/shell script to get things working, as I consider the issue an edge-case and not something most people would need to work through for a good experience with Linux.
* I'd like to have some remote connectivity for my laptop and a potential thin client I'm considering setting up.

### My Hardware Setup
I want to evaluate how each distribution supports my hardware setup, both from the perspective of hardware compatibility and because my desk setup is a little bit unconventional and may need a small update based on some recent issues.

My desktop lives in a server rack in a closet and I use fiber-optic DisplayPort/HDMI cables and Icron USB-over-Ethernet adapters to connect to it from my home office and gaming desk (inspired by Linus Tech Tips). Prior to this however, my living room TV was also included in this setup for couch gaming, but I started encountering instability in the signal going over one of the Icron extenders. I was able to confirm that the Icron extender itself was defective, which left me with a few options:

* Spend >$1000 on a new Icron extender and maintain my existing setup.
  * Unfortunately, I can't use a cheaper USB 2.0 option because I also need LAN to go over that connection, which, as far as I've seen, only the Icron supports.
  * Obviously the most expensive solution but it has the fewest compromises in terms of capabilities.
  * Default display can be inconsistent and annoying when doing things like installing a new distro.
  * My living room TV has some weird sleep states that it seems to switch between for several minutes after turning off, which can cause issues.
  * I'm stuck with the HDMI and DisplayPort versions of the cables I currently have run and may not get the full capabilities of each display.
* Remove the living room TV from the setup.
  * The cheapest (and quickest) solution and the biggest compromise can (theoretically) be covered by a Steam Link.
  * Saves me from the the weird sleep states my TV goes through.
  * Still has some issues with the default display, the DisplayPort versions, and display capabilities, but does reduce it a bit.
* Go back to a traditional desktop setup.
  * Not as expensive as another Icron, but to do it the way I want still wouldn't be cheap (probably in the range of $500-$600).
  * There are some [aesthetic advantages](https://starforgesystems.com/products/frieren-case-bundle) that I would be really excited to explore.
  * Having the case and all its I/O right at my desk can be rather convenient (and as I've discovered, more reliable).
  * Could still use a Steam Link for couch gaming, but would need to figure out some kind of thin client for my office.
  * Leaves me with a server rack that doesn't make as much sense anymore.
    * It still has some use, just not enough to justify a rack instead of a normal case.

For now, I'm going to keep the rack mount setup with only the office and living room and try to hook up an old Steam Link I have in the living room for couch gaming. I'll also be investigating and testing options for a thin client on an Intel NUC I have lying around. That way I have the fewest compromises while distro hopping and have the opportunity to test the tools for all three options. Then once I've selected the distro I like and want to run long term, I'll come back to this question and re-evaluate my hardware setup again with more information.

### Recommending Linux to Others
In addition to my own use case, I'd also like something that I can recommend to anyone new to Linux. Being able to say "I use this everyday, it's really stable and it just works" is really powerful. Being able to give people a clear demo on my own personal machine and say "no, I didn't need a terminal to get any of this working" is a big thing that could help anyone interested in switching to Linux but is anxiously thinking that you need to be technical to use it.

I'm not necessarily trying to find a "one size fits all" distribution, so much as one that I think isn't going to be especially uncomfortable for anyone open to making the switch to Linux and that doesn't require any significant technical experience to use.

#### Accessibility Tools
I do want to consider accessibility when I think about being able to recommend Linux to others, in case someone I recommend things to have any kind of visual impairment or other accessibility needs. However, in light of [a recent article about the state of accessibility tools on Linux](https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/), it's hard for me to really recommend Linux to those with accessibility needs. That being said, I don't want to just leave it at "oh well, can't be helped", so moving forward I will at least verify that each distro has Orca pre-installed (even if it isn't available for the distro installation). Any distro that doesn't will be disqualified at that point. That way I can at least say that the distro I ultimate choose is keeping up with the bare minimum.

## Pre-Check: Running in a VM
Before getting into the full distro hopping experience, I spent a few days running each OS in a VM to get a feel for the desktop environment and see if there are any obvious deal breaker issues. I mostly just looked through the desktop environment settings a bit, checking out what graphical package manager it uses, and generally getting a first impression of the OS. 

I'm only going to record notes here for distros that stand out in some way or that outright fail, so I can document *why* they failed rather than just cross them off the list and move on. I also be skipped Linux Mint, Fedora Workstation, and Tuxedo OS, as I feel I have a solid enough understanding of them from my daily use of Mint and a previous attempt at distro hopping (failed due to USB signal issues and a faulty SSD) to say that they are worth checking out for the full month.

### VM Test Results
Overall, the results aren't too surprising. No Arch based distros survived. Mostly looking at GNOME and KDE for the desktop environment. The biggest limitation seems to be my goal of using a distro I can recommend to non-technical users. Kind of disappointing that's what it is rather than my own use case, but I don't really want to abandon that objective until Linux is more relevant as a competitor to Windows and Mac OS in the desktop space.

* **Fedora Cinnamon** was eliminated for `dnfdragora` being it's only graphical package manager out of the box.
  * I may bring it back later and manually install GNOME Software just to see a non-Mint implementation of Cinnamon.
* **Nobara** has been eliminated. The main version of it only includes a terrible custom software manager.
  * In the GNOME version, the fact that their custom software pops up to update things instead of just leaving that to GNOME Software (which is still there) is unnecessary noise that I just found annoying. At least at an initial inspection, it didn't seem to add anything to the GNOME experience, so all that was left that I saw to redeem it was the Nobara Tweaks app, which looks like it was thrown together at a code jam and then never improved again.
  * Didn't even bother checking out the KDE version after the GNOME version.
* **Slimbook OS** was eliminated because I couldn't even get the boot-able ISO to run in the VM.
* **PikaOS** was eliminated because I couldn't even get the boot-able ISO to run in the VM.
* **Elementary OS** was eliminated for *only* supporting Flatpak. I fully believe that Flatpak is the future of Linux app packaging, but there are still a lot of apps that I use that aren't available as a Flatpak or are only available as an unofficial package (some of which are just non-functional).
  * I can still install them using `apt` in the terminal, but that goes against my goal of recommending it to others.
* **Zorin OS** was eliminated because it is on version 6.8 of the kernel, and doesn't have a clear, graphical way to update it. Originally, this wouldn't have bothered me, but I learned how important that is in my time evaluating [Linux Mint](/software/linux/distro-hopping-2025/mint?id=kernel-issues) on the new system.
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
  * I'll be happy if I'm proven wrong and the tooling improves to the point where it is viable, since the security and reliability of immutable distros would be great in the desktop space. ~~However, I'll wait for SteamOS to be the distro to test it since that'll have a lot more cultural relevance to try and make it work.~~ (Or not since even [Valve doesn't think SteamOS is a replacement for a desktop OS.](https://store.steampowered.com/steamos/#:~:text=Users%20should%20not%20consider%20SteamOS%20as%20a%20replacement%20for%20their%20desktop%20operating%20system).)