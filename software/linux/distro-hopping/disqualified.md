<!-- omit from toc -->
# Disqualified Distros
While I don't plan on trying them, there are a number of distributions I had considered for my distro hopping experience that I do want to address.

**Table of Contents:**
- [Ubuntu](#ubuntu)
- [Debian](#debian)
- [openSUSE](#opensuse)
- [Arch Based Distros](#arch-based-distros)
- [Immutable Distros (and Elementary OS)](#immutable-distros-and-elementary-os)
- [Fedora Variants](#fedora-variants)
- [Couldn't Pre-Test](#couldnt-pre-test)

## Ubuntu
Let's start with the obvious omission from my list: [Ubuntu](https://ubuntu.com/). I did look at Ubuntu in a VM and I do think it has a lot of advantages, but I think there are enough issues that I'm not interested in dealing with it and I don't feel comfortable recommending it to others.

<!-- omit from toc -->
### The Snap Store
As anyone who's kept up with the news about the Linux ecosystem can probably guess, my main issue with Ubuntu comes down to Canonicals application packaging format; Snaps. At the end of the day, I don't really have much of an opinion on the technical differences between Snaps and other formats, but I do find the ways Canonical is positioning the Snap ecosystem to be dependent on them concerning and the lack of support from application developers only leads to poor app availability and confused support processes.

I'm not a big fan of Canonical packaging many Snaps independent of developer builds, as separating packaging from the application development can lead to issues being misdirected and cause general confusion around support (ex. [Steam Snap](https://www.omgubuntu.co.uk/2024/01/valve-dont-recommend-ubuntu-steam-snap) and [OBS on Fedora Flatpak](https://gitlab.com/fedora/sigs/flatpak/fedora-flatpaks/-/issues/39)). More importantly, I don't care for the way they try to prevent alternative public hosting by keeping the hosting software proprietary and only enabling an override rather than an addition. It seems like they are trying to follow Apples playbook and lock everyone into being dependent on their services and only providing the config for enterprises with policies about proxying packages.

While Flathub has become the defacto default for Flatpak hosting, it is not the only option since the hosting software is based on an open standard. A clear example would be Fedora Flatpak, which, while I disagree with their focus on re-packaging apps, I appreciate having the alternative hosting for packages verified to work with the system. Flatpak also seems to have more support from developers, reducing the need for third-party packaging (the challenges of which are also partially mitigated through [Flathub marking them as unverified](https://docs.flathub.org/docs/for-users/verification)). For these reasons, I'd prefer a distribution that uses Flatpak (preferably with Flathub) out-of-the-box for modern package installation.

In addition, Canonical's stance is contributing to a commonly referenced issue with the Linux desktop: "the fractured experience". Ubuntu is the only major distro not to have adopted Flatpak, and it's clearly because they have a vested interest and don't want to accept that they've lost. If the problem were really about any technical issues, then they would:
* Focus on the use case that Snaps are better suited to fill (lower level components) and provide a better user experience in their distros by using Flatpaks for use cases they are better suited to (GUI applications).
* [Follow Fedora's example](https://blogs.gnome.org/mcatanzaro/2025/07/21/fedora-must-carefully-embrace-flathub/) and work *with* the Flatpak/Flathub teams to improve Flatpak to solve those problems.

?>**Note:** I want to be clear, I fully believe that the issue of fracturing is often overblown, since most instances of "fracturing" are really "supporting a different use case". However, there is a balance that needs to be struck to avoid confusion, improve support, and generally prevent the needless [proliferation of new standards](https://xkcd.com/927/) and I fully believe that Canonicals stance on Snaps negatively influences that balance.

All that being said, I have found [a guide to setting up GNOME Software and Flatpak on Ubuntu](https://www.howtogeek.com/how-and-why-to-install-flatpak-software-packages-on-ubuntu/), so if the Snap Store experience were good enough to recommend to others, I could at least install that for myself and recommend the out-of-the-box experience to others. Unfortunately, the weakness of a single company like Canonical doing most, if not all, of the packaging also shows it's weakness in the library of applications to install. I found that a number of applications I use aren't available in the Snap Store, and I can't recommend that kind of experience to less technical users who wouldn't be comfortable setting up a separate package manager.

<!-- TODO: Add list of apps I can't find on the snap store. -->

<!-- omit from toc -->
### The Desktop Experience
Aside from the philosophical and functional issues with Snaps, the rest of the Ubuntu experience is actually pretty solid and would probably be among my favorites if Snaps didn't keep me from feeing comfortable giving it a full chance.

It ships with the GNOME Desktop, which I have some mixed feeling about (read my [GNOME review][gnome-review] for details), but they fix most of the real problems with it by having a number of extensions installed out of the box. It's not quite everything that I would install, but it covers the most important issues (App Indicators, Desktop Icons, and Tiling) and even included configuring the application dock. It does leave out the "Add to Desktop" extension for some reason and it didn't come with the Extension Manager pre-installed, so it does still have some room to improve on the desktop experience. However, they don't seem content to let GNOME's stubbornness impact the average end user, which I do appreciate.

I'm not too fond of the default Ubuntu configurations with the dock on the side, but it's easy to configure it to meet my preferences in the standard settings.

Beyond all that, I like the GNOME experience and Ubuntu provides it with a good mix of stability and modern hardware support with the Linux HWE Kernel.

## Debian
I ruled out [Debian](https://www.debian.org/) because, while I do appreciate their focus on stability (Mint's similar focus is a big part of why I've used it for so long), I've also encountered issues with hardware support on LTS kernels. As a result, I'm not comfortable using Debian or recommending it to people who may have newer hardware.

To be clear, I don't think this is a problem with Debian; it's just better suited to different use cases. The stability Debian provides is a big part of what makes Debian a great base for other projects, great for enterprise use (I use it a lot at work for container builds for these reasons), and great for keeping older systems running and out of the landfill.

## openSUSE
I was originally planning to try [openSUSE Tumbleweed](https://get.opensuse.org/tumbleweed/) during my 2025 attempt at distro hopping, but wasn't able to easily connect it to my printer or my SMB network drive so it has been disqualified.

The only real note I have from my extremely short lived experience with it is that the installer for it has a very unintuitive drive partitioning menu. It's default made me think that it was going to erase the drive and install cleanly, but it was actually trying to install alongside my previous OS and I needed to manually set it to wipe everything.

Aside from that, it was a fairly vanilla GNOME setup, and you can see [my thoughts on that in the GNOME write-up][gnome-review].

## Arch Based Distros
The Arch based distro I hear about most is [Manjaro](https://manjaro.org/), so I'll address that first. As far as I can tell, the Manjaro project is completely mismanaged, so I didn't even bother trying it in a VM. Repeated issues with [SSL certificates expiring](https://forum.manjaro.org/t/software-manjaro-org-expired-certificate-again/119696) (once is one thing, but it keeps happening), [DDoSing the AUR](https://gitlab.manjaro.org/applications/pamac/-/issues/1017), [issues playing nice with others](https://blog.brixit.nl/why-i-left-pine64/); and that's just what I found in 5 minutes of searching. It doesn't seem like it would be a stable or trustworthy experience.

Putting that aside, I did want to look at Arch based distros to see how they are, so I tried [Garuda Linux](https://garudalinux.org/), [EndeavourOS](https://endeavouros.com/), and [CachyOS](https://cachyos.org/) in VMs to see what was up. Unfortunately, they all had basically the same problem: being *exclusively* for advanced users.

Honestly, I would love to be able to try these distros in more depth, because I think it could be really interesting to see if those more advanced tools could really improve my own personal experience. However, until Linux has more of a market share and loses that reputation of needing technical expertise to use, I don't want to give up the ability to recommend the distro I use to less technical users.

With that in mind, the fact that these distros don't prioritize having a user-friendly app store experience and easy to use defaults means that I need to disqualify them for this round of distro hopping. If something changes and Linux does become more mainstream (maybe not fully taking over, but enough that people aren't afraid of it), I will likely re-evaluate these distros. Until then, I'll just have to try running base Arch in a VM once this is all done.

## Immutable Distros (and Elementary OS)
?>**Note:** I'm going to group [Elementary OS](https://elementary.io/) in with immutable distros, because it shares one of the main problems: only supporting Flatpaks out of the box. It's not as much of a problem as with immutable distros, because you can still install system packages through a terminal, but it's still a problem.

Immutable distributions (ex. [Bazzite](https://bazzite.gg/), [SteamOS](https://store.steampowered.com/steamos), [NixOS](https://nixos.org/)) are an interesting idea, and I think they make a lot of sense on servers and on handheld gaming devices like the Steam Deck (there are probably a few other use cases similar to the handhelds, but I'm not readily familiar with them). However, I don't think they make a lot of sense in the desktop/laptop space (at least not yet). They are reliant on application packaging solutions that are still developing (or in the case of Nix, is just too complicated for the average user) and make troubleshooting and resolving any problems that do occur that much more difficult.

Most immutable distros are heavily reliant on Flatpak to provide a simple, sandboxed solution to application packaging to make it easy to install applications without impacting the immutable parts of the system. While I do honestly believe that Flatpaks are the future of Linux, but there are still a lot of gaps in what they are able to provide. There are a lot of applications that I use that either aren't available as Flatpaks or are only available as an [unverified](https://docs.flathub.org/docs/for-users/verification) Flatpak (some of which are fairly broken in my experience). I'm also not convinced that some tools are ever going to be available as a Flatpak (Raspberry Pi Imager, GParted, compilers for my development work), and using tools like Nix or running them in a container are workarounds that just aren't user friendly enough for me to recommend to others.

The advantage of immutable distros is also supposed to be that they are stable, but it puts you in a position where if something doesn't work out-of-the-box, you may not have a lot of options to fix it. Again, tools like Nix may provide a solution to that, but I'd like to see more support behind those tools and make them more standard before depending on them for my main operating system.

I'm really hoping that Flatpak can gain more traction and tools like Nix can become more standard and user friendly, because I think the idea behind immutable distros makes a lot of sense. Until then, I'm going to have to agree with Valve when they say, [*"Users should not consider SteamOS as a replacement for their desktop operating system."*](https://store.steampowered.com/steamos#:~:text=Users%20should%20not%20consider%20SteamOS%20as%20a%20replacement%20for%20their%20desktop%20operating%20system.)

## Fedora Variants
Looking into the official [Fedora spins](https://www.fedoraproject.org/spins), I've decided not to try any of them, because they all ship with [dnfdragora](https://github.com/manatools/dnfdragora?tab=readme-ov-file#dnfdragora) as their only graphical software manager, which isn't particularly user friendly and doesn't support Flatpaks in any way. I'm rather disappointed by that because I was looking forward to trying an implementation of Cinnamon other than Linux Mint, but I can understand the Fedora team deciding that it isn't worth the effort to configure other tools for these less commonly used spins.

I'll also say the same thing for [Nobara](https://nobaraproject.org/), because it's default package manager is only mildly better than dnfdragora. I did try the GNOME version as well and it had GNOME Software installed and configured, but it still defaulted to it's own package manager and would probably just get aggravating and cause confusion if I recommended it to someone. I also wasn't a fan of their Nobara Tweaks app, which looks like it was thrown together at a code jam and then never improved again.

## Couldn't Pre-Test
Lastly, [PikaOS](https://wiki.pika-os.com/en/home) and [Slimbook OS](https://slimbook.com/en/slimbook-os) were both eliminated because I wasn't able to get them running in a VM to test it out and see if there were any deal-breakers. I may revisit these later if I decide I'm not content with any of my other options, but for now I think I've got enough distros to try.

[gnome-review]: /software/linux/distro-hopping/desktops?id=gnome