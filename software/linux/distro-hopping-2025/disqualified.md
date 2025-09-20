# Disqualified Distros
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

While I don't plan on trying these distros for a full month, I do want to address a number of distributions I considered for this experience. I find a lot of these disappointing because my goal of being able to recommend a distro to less technical folks is a blocker on a lot of them. There are some simple tweaks and changes I could make to a few that I think would really improve the experience, but I want to maintain that ability to show someone my computer and say "yeah, it more-or-less just works".

## Ubuntu
Let's start with the obvious omission from my list: Ubuntu. I did look at Ubuntu in a VM and I do think it has a lot of advantages, but I think there are enough issues that I'm not interested in dealing with it and I don't feel comfortable recommending it.

### The Snap Store
I'm not a big fan of Canonical packaging many Snaps independent of developer builds, as it can lead to issues being misdirected and cause general confusion around support (ex. [Steam Snap](https://www.omgubuntu.co.uk/2024/01/valve-dont-recommend-ubuntu-steam-snap) and [OBS on Fedora Flatpak](https://gitlab.com/fedora/sigs/flatpak/fedora-flatpaks/-/issues/39)). More importantly, I don't care for the way they try to prevent alternative public hosting by keeping the hosting software proprietary and only enabling an override rather than an addition.

While Flathub has become the defacto default for Flatpak hosting, it is not the only option since the hosting software is based on an open standard. A clear example would be Fedora Flatpak, which, while I disagree with their focus on re-packaging apps, I appreciate having the alternative hosting for packages verified to work with the system. Flatpak also seems to have more support from developers, reducing the need for third-party packaging (the challenges of which are also partially mitigated through [Flathub marking them as unverified](https://docs.flathub.org/docs/for-users/verification)). For these reasons, I'd prefer a distribution that uses Flatpak (preferably with Flathub) out-of-the-box for modern package installation.

In addition, Canonical's stance is contributing to a common issue with Linux: the fractured experience. Ubuntu is the only major distro not to have adopted Flatpak, and it's clearly because they have a vested interest and don't want to accept that they've lost. If the problem were really about any technical issues, then they'd [follow Fedora's example](https://blogs.gnome.org/mcatanzaro/2025/07/21/fedora-must-carefully-embrace-flathub/), and work *with* the Flatpak/Flathub teams to improve Flatpak to solve those problems. Not waste effort and create confusion by forcing users to need to figure out if they should submit bugs to the developer or the packager and specify they are using what seems to be the less popular packaging solution.

That being said, I have found [a guide to setting up GNOME Software and Flatpak on Ubuntu](https://www.howtogeek.com/how-and-why-to-install-flatpak-software-packages-on-ubuntu/), so if the Snap Store experience were good enough to recommend to others, I could at least install that for myself and recommend the out-of-the-box experience to others. Unfortunately, the weakness of a single company like Canonical doing all the packaging also shows it's weakness in the library of applications to install. I found that a number of applications I use aren't available in the Snap Store. Even PrusaSlicer just recommends [installing Flatpak and pulling it from Flathub](https://help.prusa3d.com/article/install-prusaslicer_1903). I can't recommend that kind of experience to less technical users who wouldn't be comfortable setting up a separate package manager and app store.

### The Desktop Experience
Aside from the philosophical and functional issues with Snaps, the rest of the Ubuntu experience is actually pretty solid and would probably be among my favorites if Snaps didn't keep me from feeing comfortable giving it a full chance.

It ships with the GNOME Desktop, which I have some mixed feeling about (read my [Fedora review](/software/linux/distro-hopping-2025/fedora-workstation?id=gnome) for details), but they fix most of the real problems with it by having a number of extensions installed out of the box. It's not quite everything that I would install, but it covers the most important issues (App Indicators, Desktop Icons, and Docking) and even included an improved tiling experience. It does leave out the "Add to Desktop" extension for some reason and it didn't come with the Extension Manager pre-installed, so it does still have some room to improve on the desktop experience. However, they don't seem content to let GNOME's stubbornness impact the average end user, which I do appreciate.

I'm not too fond of the default Ubuntu experience with the dock on the side, but it's easy to configure it to meet my preferences in the standard settings.

Beyond all that, I like the GNOME experience and Ubuntu provides it with a good mix of stability and modern hardware support with the Linux HWE Kernel.

## Pop!_OS
I was actually planning to try out Pop!_OS, but that was based on System 76's plan to have two full releases of their new Cosmic desktop in 2025. Unfortunately, at the time of writing (early September 2025) they are rather late on that plan and still in alpha testing.

I'd rather not form any opinions of Pop!_OS based on a desktop environment that's going away (hopefully soon). I am really interested in what Cosmic is going to be, so I will likely try it out once it's had a release or two. Unfortunately, that just wont be a part of this round of distro hopping.

## openSUSE
I was also planning to try openSUSE Tumbleweed, but wasn't able to easily connect it to my printer or my SMB network drive so it has been disqualified.

The only real note I have from my extremely short lived experience with it is that the installer for it has a very unintuitive drive partitioning menu. It's default made me think that it was going to erase the drive and install cleanly, but it was actually trying to install alongside my previous OS and I needed to manually set it to wipe everything.

Aside from that and the fact that connections that are simple on other systems seemed to require additional work here, it was a fairly vanilla GNOME setup, and you can see [my thoughts on that in the Fedora write-up](/software/linux/distro-hopping-2025/fedora-workstation?id=gnome).

## Arch Based Distros
The Arch based distro I hear about most is [Manjaro](https://manjaro.org/), so I'll address that first. As far as I can tell, the Manjaro project is completely mismanaged, so I didn't even bother trying it in a VM. Repeated issues with [SSL certificates expiring](https://forum.manjaro.org/t/software-manjaro-org-expired-certificate-again/119696) (once is one thing, but it keeps happening), [DDoSing the AUR](https://gitlab.manjaro.org/applications/pamac/-/issues/1017), [issues playing nice with others](https://blog.brixit.nl/why-i-left-pine64/); and that's just what I found in 5 minutes of searching. It doesn't seem like this is going to be a stable or trustworthy experience.

Putting that aside, I did want to look at Arch based distros to see how it is, so I tried [Garuda Linux](https://garudalinux.org/), [EndeavourOS](https://endeavouros.com/), and [CachyOS](https://cachyos.org/) in VMs to see what was up. Unfortunately, they all had basically the same problem: being *exclusively* for advanced users.

Honestly, I would love to be able to try these distros in more depth, because I think it could be really interesting to see if those more advanced tools could really improve my own personal experience. Until Linux has more of a market share and loses that reputation of needing technical expertise to use, I don't want to give up the ability to recommend the distro I use to less technical users.

With that in mind, the fact that these distros don't prioritize having a user-friendly app store experience and comfortable defaults means that I need to disqualify them for this round of distro hopping. If something changes and Linux does become more mainstream (maybe not fully taking over, but enough that people aren't afraid of it), I will likely re-evaluate these distros. Until then, I'll just have to try running base Arch in a VM.

## Immutable Distros (and Elementary OS)
?> I'm going to group [Elementary OS](https://elementary.io/) in with immutable distros, because it shares one of the main problems: only supporting Flatpaks out of the box. It's not as much of a problem as with immutable distros, because you can still install system packages through a terminal, but it's still a problem.

Immutable distributions (ex. [Bazzite](https://bazzite.gg/), [SteamOS](https://store.steampowered.com/steamos), [NixOS](https://nixos.org/)) are an interesting idea, and I think they make a lot of sense on servers and on handheld gaming devices like the Steam Deck (there are probably a few other use cases similar to the handhelds, but I'm not readily familiar with them). However, I don't think they make a lot of sense in the desktop/laptop space yet. They are reliant on application packaging solutions that are still developing (or in the case of Nix, is just too complicated for the average user) and make troubleshooting problems that do occur that much more difficult.

Most immutable distros are heavily reliant on Flatpak to provide a simple, sandboxed solution to application packaging to make it easy to install applications without impacting the immutable parts of the system. I do honestly believe that Flatpaks are the future of Linux, but there are still a lot of gaps in what they are able to provide. There are a lot of applications that I use that either aren't available as Flatpaks or are only available as a *broken*, unverified Flatpak. I'm also not convinced that some tools are going to be available as a Flatpak (Raspberry Pi Imager, GParted, compilers for my development work), and using tools like Nix or running them in a container are workarounds that just aren't user friendly enough for me to recommend to others.

The advantage of immutable distros is also supposed to be that they are stable, but it puts you in a position where if something doesn't work out-of-the-box, you don't have a lot of options to fix it. If I encountered a problem from introducing new hardware, [like I did with Linux Mint][mint-kernel-issues], I have to use a complicated tool like Nix to resolve it instead of a simple GUI to select a kernel that supports it.

I'm really hoping that Flatpak can gain more traction and tools like Nix to be able to safely make changes mature, because I think the idea behind immutable distros makes a lot of sense. Until then, I'm going to have to agree with [Valve when they say](https://store.steampowered.com/steamos#:~:text=Users%20should%20not%20consider%20SteamOS%20as%20a%20replacement%20for%20their%20desktop%20operating%20system.):

> Users should not consider SteamOS as a replacement for their desktop operating system.

## Fedora Variants
Looking into the official Fedora spins, I've decided not to try any of them, because they all ship with [dnfdragora](https://github.com/manatools/dnfdragora?tab=readme-ov-file#dnfdragora) as their only graphical software manager. I'm rather disappointed by that because I was looking forward to trying an implementation of Cinnamon other than Linux Mint, but the Fedora team must not believe it's worth the effort to configure other tools for these less commonly used distributions.

I'll also say the same thing for [Nobara](https://nobaraproject.org/), because it's default package manager is only mildly better than dnfdragora. I did try the GNOME version as well and it had GNOME Software installed and configured, but it still defaulted to it's own package manager and would probably just get aggravating and cause confusion if I recommended it to someone. I also wasn't a fan of their Nobara Tweaks app, which looks like it was thrown together at a code jam and then never improved again.

## Misc
I ruled out [Zorin OS](https://zorin.com/os/) and [Debian](https://www.debian.org/) because they runs the LTS version of the kernel, but (as far as I could tell) didn't have a way to upgrade to the HWE kernel. As I learned [installing Mint on my new computer][mint-kernel-issues], that can be a bit of a deal-breaker.

Lastly, [PikaOS](https://wiki.pika-os.com/en/home) and [Slimbook OS](https://slimbook.com/en/slimbook-os) were eliminated because I wasn't able to get them running in a VM to test it out and see if there were any deal-breakers. I may revisit these later if I decide I'm not content with any of my other options, but for now I think I've got enough distros to try.

[mint-kernel-issues]: /software/linux/distro-hopping-2025/mint?id=kernel-issues