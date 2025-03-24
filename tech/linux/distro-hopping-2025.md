<!-- omit from toc -->
# Distro Hopping
Planning to build a new PC, and want to try again after having issues in 2024. The goal will be to spend a month with each distro before moving on to the next. I may add or remove distros based on early impressions or issues I encounter with installation.

- [Distros I plan to try](#distros-i-plan-to-try)
  - [Note about Ubuntu](#note-about-ubuntu)
- [My Use Case](#my-use-case)
- [Pre-Check: Running in a VM](#pre-check-running-in-a-vm)

## Distros I plan to try
* [Linux Mint](distro-hopping-2024.md) (baseline)
* [Fedora Workstation](https://fedoraproject.org/workstation/)
* [Fedora KDE](https://fedoraproject.org/spins/kde)
* [Fedora Cinnamon](https://fedoraproject.org/spins/cinnamon)
* [Nobara](https://nobaraproject.org/)[^1]
* [PikaOS](https://wiki.pika-os.com/en/home)[^1]
* [Pop!_OS](https://pop.system76.com/)[^2]
* [Tuxedo OS](https://www.tuxedocomputers.com/en/TUXEDO-OS_1.tuxedo)
* [openSUSE Tumbleweed](https://www.opensuse.org/#Tumbleweed)
* [EndeavourOS](https://endeavouros.com/)
* [CachyOS](https://cachyos.org/)
* [Bazzite](https://bazzite.gg/)[^1]
* [Garuda Linux](https://garudalinux.org/)[^1]

[^1]: Will determine desktop version during [VM tests](#pre-check-running-in-a-vm)
[^2]: Will hold off until a full release of Cosmic Desktop

### Note about Ubuntu
Depending on how my experience with other distros goes, I may more may not try Ubuntu or one of its official flavors as well. I'm not a big fan of Canonical packaging many Snaps independent of developer builds, as it can lead to issues being misdirected and cause general confusion around support (ex. [Steam Snap](https://www.omgubuntu.co.uk/2024/01/valve-dont-recommend-ubuntu-steam-snap) and [OBS on Fedora Flatpak](https://gitlab.com/fedora/sigs/flatpak/fedora-flatpaks/-/issues/39)), nor do I care for the way they try to prevent alternative public hosting.

While Flathub has become the defacto default for Flatpak hosting, it is not the only option since the hosting software is also open source. A clear example would be Fedora Flatpak, which, while I disagree with their focus on re-packaging apps, I appreciate having the alternative hosting for packages verified to work with the system. Flatpak also seems to have more support from developers, reducing the need for third-party packaging (the challenges of which are also partially mitigated through [Flathub marking them as unverified](https://docs.flathub.org/docs/for-users/verification)). For these reasons, I'd prefer a distribution that uses Flatpak (preferably with Flathub) out-of-the-box for modern package installation.

That being said, I have found [a guide to setting up GNOME Software and Flatpak on Ubuntu](https://www.howtogeek.com/how-and-why-to-install-flatpak-software-packages-on-ubuntu/), so I do consider that an acceptable compromise if I find myself enjoying the GNOME experience and otherwise frustrated with other distros running GNOME. I'd rather not go down this route because of the need for additional setup using a terminal. While I am comfortable in a terminal, I prefer being able to honestly tell people that you don't need it for a good experience with Linux.

## My Use Case
To give a bit of context to how I will be evaluating these distros; these are the kinds of tasks I'll be performing with them that could impact my experience. I don't expect the software I use to cause too much issue, but my setup having three monitors that need to be mirrored could cause some frustration depending on the desktop environment.

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

## Pre-Check: Running in a VM
I'm going to spend a day or two just loading into each OS in a VM to get a feel for the desktop environment and see if there are any obvious deal breaker issues before we get started. I'll be looking through the desktop environment settings a bit, checking out what graphical package manager it uses, and generally getting a first impression of the OS. 

For some distributions that offer multiple versions for different desktop environments, I'll also use this time to determine which desktop they offer that I want to try it with. I don't want to just assume that all implementations of GNOME or KDE will be the same, so I want to actually try both from each distro; even if only briefly in a VM.

I'm only going to record notes here for distros that stand out in some way or that outright fail, so I can document *why* they failed rather than just cross them off the list an move on. I will also be skipping Linux Mint, Fedora Workstation, and Tuxedo OS, as I feel I have a solid enough understanding of them from my daily use of Mint and my [2024 attempt at distro hoping](/tech/linux/distro-hopping-2024.md) to say that they are worth checking out for the full month.