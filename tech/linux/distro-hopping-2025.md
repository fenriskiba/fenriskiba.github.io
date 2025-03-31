<!-- omit from toc -->
# Distro Hopping
Planning to build a new PC, and want to try again after having issues in 2024. The goal will be to spend a month with each distro before moving on to the next. I may add or remove distros based on early impressions or issues I encounter with installation.

**Table of Contents:**
- [Distros I plan to try](#distros-i-plan-to-try)
  - [Note about Ubuntu](#note-about-ubuntu)
- [My Use Case](#my-use-case)
  - [How I use my computer](#how-i-use-my-computer)
  - [Recommending it to others](#recommending-it-to-others)
- [Pre-Check: Running in a VM](#pre-check-running-in-a-vm)
  - [VM Test Results](#vm-test-results)
- [Next Steps](#next-steps)

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
Depending on how my experience with other distros goes, I may more may not try Ubuntu or one of its official flavors as well. I'm not a big fan of Canonical packaging many Snaps independent of developer builds, as it can lead to issues being misdirected and cause general confusion around support (ex. [Steam Snap](https://www.omgubuntu.co.uk/2024/01/valve-dont-recommend-ubuntu-steam-snap) and [OBS on Fedora Flatpak](https://gitlab.com/fedora/sigs/flatpak/fedora-flatpaks/-/issues/39)), nor do I care for the way they try to prevent alternative public hosting by keeping the hosting software proprietary and only enabling an override rather than an addition.

While Flathub has become the defacto default for Flatpak hosting, it is not the only option since the hosting software is based on an open standard. A clear example would be Fedora Flatpak, which, while I disagree with their focus on re-packaging apps, I appreciate having the alternative hosting for packages verified to work with the system. Flatpak also seems to have more support from developers, reducing the need for third-party packaging (the challenges of which are also partially mitigated through [Flathub marking them as unverified](https://docs.flathub.org/docs/for-users/verification)). For these reasons, I'd prefer a distribution that uses Flatpak (preferably with Flathub) out-of-the-box for modern package installation.

That being said, I have found [a guide to setting up GNOME Software and Flatpak on Ubuntu](https://www.howtogeek.com/how-and-why-to-install-flatpak-software-packages-on-ubuntu/), so I do consider that an acceptable compromise if I find myself enjoying the GNOME experience and otherwise frustrated with other distros running GNOME. I'd rather not go down this route because of the need for additional setup using a terminal. While I am comfortable in a terminal, I prefer being able to honestly tell people that you don't need it for a good experience with Linux.

## My Use Case
One of the great things with Linux is the variety of options available, but that also means that not every option is for everyone. Just cause a certain distro isn't for me, doesn't make it bad. Honestly, there are a lot of distros I'd be interested in exploring if it weren't for the fact that I want something [easy to use without technical experience](#recommending-it-to-others).

With that in mind, this is the context of how I'll be evaluating these options. If you are interesting in using my experience to help choose a Linux distro, please keep this in mind in case your use case differs from mine.

### How I use my computer
These are the kinds of tasks I'll be performing with them that could impact my experience. I don't expect the software I use to cause too much issue, but my setup having three monitors that need to be mirrored could cause some frustration depending on the desktop environment.

* I don't mind some customization, but I'd like to keep it to using graphical tools if I can.
  * While I am comfortable in a terminal, I prefer being able to honestly tell people that you don't need it for a good experience with Linux.
* [Mirroring Multiple Displays](https://forums.linuxmint.com/viewtopic.php?t=418626)
  * This is the one exception where I will be comfortable using a terminal/shell script to get things working, as I consider the issue an edge-case and not something most people would need to work through for a good experience with Linux.
* Light Gaming
  * Not really a competitive gamer, so I'm not too worried about anti-cheat issues, but I do play some games.
  * May also try some Gamecube/PS2 era emulation, but not entirely sure yet.
  * Hoping I can get VR working, but there are some potentially confounding hardware issues with my setup.
    * My desktop sits in separate closet and I use a USB-over-ethernet adapter that I have been having some signal integrity issues with to connect to it from my desk.
* 3D Printing with PrusaSlicer (or if it ever gets published to Flathub, OrcaSlicer)
* Light Development tasks
  * Containers with Podman
  * Go and Node development

### Recommending it to others
In addition to my own use case, I'd also like something that I can recommend to anyone new to Linux. Being able to say "it's not just a beginners distro, it's what I use too" is really powerful. Being able to give people a clear demo on my own personal machine and say "no, I didn't need a terminal to get any of this working" is a big thing that could help anyone interested in switching to Linux but anxiously thinking that you need to be technical to use it.

I'm not necessarily trying to find a "one size fits all" distribution, so much as one that I think isn't going to be especially uncomfortable for anyone open to making the switch to Linux and that doesn't require any significant technical experience to use.

<!-- omit from toc -->
#### Accessibility Tools
**Added as a result of the [VM Testing](#pre-check-running-in-a-vm)**

I personally don't have any accessibility needs when using a computer and I'm not going to consider it a deal breaker, but keeping in line with my goal of being able to recommend the distro I use to anyone, I should also be able to recommend it to those with visual impairments, people unable to use a mouse (but still don't want to use a Terminal), or otherwise need some kind of accessibility accommodations.

That being said, I'm not exactly an accessibility expert, so I can't give a complete perspective on this. I'll look into it a bit as I try each distro, and see if there is any community sentiment on the matter, but any accessibility comments I make will need to come with the disclaimer that I am not fully trained on these issues.

## Pre-Check: Running in a VM
I'm going to spend a day or two just loading into each OS in a VM to get a feel for the desktop environment and see if there are any obvious deal breaker issues before we get started. I'll be looking through the desktop environment settings a bit, checking out what graphical package manager it uses, and generally getting a first impression of the OS. 

I'm only going to record notes here for distros that stand out in some way or that outright fail, so I can document *why* they failed rather than just cross them off the list an move on. I will also be skipping Linux Mint, Fedora Workstation, and Tuxedo OS, as I feel I have a solid enough understanding of them from my daily use of Mint and my [2024 attempt at distro hoping](/tech/linux/distro-hopping-2024.md) to say that they are worth checking out for the full month.

### VM Test Results
Overall, the results aren't too surprising. No Arch based distros survived. Mostly looking at GNOME and KDE for the desktop environment. The biggest limitation seems to be my goal of using a distro I can recommend to non-technical users. Kind of disappointing that's what it is rather than my own use case, but I don't really want to abandon that objective until Linux is more relevant as a competitor to Windows and Mac OS in the desktop space.

* Fedora Cinnamon was eliminated for `dnfdragora` being it's only graphical package manager out of the box.
  * I may bring it back later and manually install GNOME Software just to see a non-Mint implementation of Cinnamon.
* Nobara has been eliminated. The main version of it only includes a terrible custom software manager.
  * In the GNOME version, the fact that their custom software pops up to update things instead of just leaving that to GNOME Software (which is still there) is unnecessary noise that I just found annoying. At least at an initial inspection, it didn't seem to add anything to the GNOME experience, so all that was left that I saw to redeem it was the Nobara Tweaks app, which looks like it was thrown together at a code jam and then never improved again.
  * Didn't even bother checking out the KDE version after the GNOME version.
* PikaOS was eliminated because I couldn't even get the boot-able ISO to run in the VM.
* Garuda definitely doesn't play nice with my goal of having a distro that I can honestly recommend to less technical friends. If I were the only person I was thinking about, I'd probably be a bit more open to trying it, but I don't want to abandon that objective without a clear reason.
  * I tried Mokka and Gnome DEs, and was interested in Dr460nized and Cinnamon as well, but decided to save time after I saw the same issues in both.
  * Initial setup does pop into Terminal for updates. It does keep it simple and straight-forward, but would still make it difficult for me to say "yup, it's super friendly, even if you aren't very technical" since that would scare non-technical users.
  * Initial software setup is nice (simple checkboxes with some recommendations), but gives so many options that it could scare less technical users. Some of the options it gives (like graphical software managers) also aren't particularly clear for less technical users.
  * No Flatpak support out of the box and only really has a good graphical software manager if you install GNOME Software (which is does give a checkbox for during setup) and configure it with Flatpak.
* EndeavourOS is very similar to Garuda (Arch based distros maintain the Arch philosophy after all). Tried the KDE version, which doesn't come with Discover (or any other graphical software manager) pre-installed. It did have a post-install tool that (eventually) included installing Flatpak, but only after a lot of other steps, and only made sense if you know what Flatpak is. Would be interesting if I didn't want to be able to recommend the same distro I use to less technical folks, but for now it is a pass.
* CachyOS is the same as the other Arch based distros, so not too much to say. This one does have it's own graphical package manager, but it's still not great. It also left the shortcut to KDE Discover in the menu bar, even though it isn't installed, which doesn't give the best impression of its polish.
  * One thing I did find interesting with Cachy is that it does consider accessibility, but not by default. When choosing some things like the desktop environment, [it gives an option for accessibility tools](/media/linux/cachyOS_a11y.png ':ignore'), but it's not checked by default. While I like that it does consider accessibility needs, I dislike that it doesn't consider them important enough to have available by default.
* Bazzite was removed because I didn't realize it was an immutable distro. While I think immutable distros make a lot of sense in the server and handheld spaces, I'm not yet convinced they make sense in the desktop space.
  * There are still a lot of tools that either aren't available as a Flatpak or that the unofficial Flatpak doesn't work. I'm also not sure some tools I use (Gparted, Raspberry Pi Imager, etc.) are even viable in a sandboxed format like Flatpak.
  * I'd also rather not need to use a container to run development tools. I'm sure I could run the Go compiler that way, but having it installed natively is going to be simpler.
  * I'll be happy if I'm proven wrong and the tooling improves to the point where it is viable, since the security and reliability of immutable distros would be great in the desktop space. However, I'll wait for SteamOS to be the distro to test it since that'll have a lot more cultural relevance to try and make it work.

## Next Steps
At the time of writing, the next step in this is to actually get my new desktop set up and try each distro for a month. Unfortunately, this step will need to be put on hold for a short while, as I am re-evaluating my hardware setup.

Currently, I have my desktop in a server rack in a closet, and use fiber-optic DisplayPort/HDMI cables and USB 3.0 over Ethernet adapters to connect to it from my office, gaming desk, and living room (inspired by Linus Tech Tips). I have been having some issues with this setup however (signal integrity issues, being stuck on older DP/HDMI standards, different display capabilities, etc.) and am trying to decide if it worth it to move back towards a more traditional setup. On one hand, I do really like the idea of this setup and don't want to re-invest in alternatives (buying a new case and cooling, figure out a slim client solution for my office, fix up the server closet for other ideas, etc.). On the other hand, I don't want to fall prey to the sunk cost fallacy and there are certain conveniences and [aesthetic advantages](https://starforgesystems.com/products/frieren-case-bundle) to having the case more readily available.

So, until I can determine the direction for my setup and potentially make any required hardware changes, this project will be on hold. Hopefully that will also give PopOS some time to finish Cosmic and for things like new Wayland protocols and other DE improvements to get rolled out to potentially improve the experience on all of these distros.