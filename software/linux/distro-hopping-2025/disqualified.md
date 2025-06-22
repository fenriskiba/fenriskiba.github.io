# Disqualified Distros
While I don't plan on trying these distros for a full month, I do want to address a number of distributions I considered for this experience. I find a lot of these disappointing because my goal of being able to recommend a distro to less technical folks is a blocker on a lot of them. There are some simple tweaks and changes I could make to a few that I think would really improve the experience, but I want to maintain that ability to show someone my computer and say "yeah, it more-or-less just works".

## Ubuntu
Let's start with the obvious omission from my list: Ubuntu. I did look at Ubuntu in a VM and I do think it has a lot of advantages, but I think there are enough issues that I'm not interested in dealing with it and I don't feel comfortable recommending it.

### The Snap Store
I'm not a big fan of Canonical packaging many Snaps independent of developer builds, as it can lead to issues being misdirected and cause general confusion around support (ex. [Steam Snap](https://www.omgubuntu.co.uk/2024/01/valve-dont-recommend-ubuntu-steam-snap) and [OBS on Fedora Flatpak](https://gitlab.com/fedora/sigs/flatpak/fedora-flatpaks/-/issues/39)). More importantly, I don't care for the way they try to prevent alternative public hosting by keeping the hosting software proprietary and only enabling an override rather than an addition.

While Flathub has become the defacto default for Flatpak hosting, it is not the only option since the hosting software is based on an open standard. A clear example would be Fedora Flatpak, which, while I disagree with their focus on re-packaging apps, I appreciate having the alternative hosting for packages verified to work with the system. Flatpak also seems to have more support from developers, reducing the need for third-party packaging (the challenges of which are also partially mitigated through [Flathub marking them as unverified](https://docs.flathub.org/docs/for-users/verification)). For these reasons, I'd prefer a distribution that uses Flatpak (preferably with Flathub) out-of-the-box for modern package installation.

That being said, I have found [a guide to setting up GNOME Software and Flatpak on Ubuntu](https://www.howtogeek.com/how-and-why-to-install-flatpak-software-packages-on-ubuntu/), so if the Snap Store experience were good enough to recommend to others, I could at least install that for myself and recommend the out-of-the-box experience to others.

Unfortunately, the weakness of a single company like Canonical doing all the packaging also shows it's weakness in the library of applications to install. I found that a number of applications I use aren't available in the Snap Store. Even PrusaSlicer just recommends [installing Flatpak and pulling it from Flathub](https://help.prusa3d.com/article/install-prusaslicer_1903). I can't recommend that kind of experience to less technical users who wouldn't be comfortable setting up a separate package manager and app store.

### The Desktop Experience
Aside from the philosophical and functional issues with Snaps, the rest of the Ubuntu experience is actually pretty solid and would probably be among my favorites if Snaps didn't keep me from feeing comfortable giving it a full chance.

It ships with the Gnome Desktop, which I have some mixed feeling about (read my Fedora review when that comes out for details), but they fix most of the real problems with it by having a number of extensions installed out of the box. It's not quite everything that I would install, but it covers the most important issues (App Indicators, Desktop Icons, and Docking) and even included an improved tiling experience. It does leave out the "Add to Desktop" extension for some reason and it didn't come with the Extension Manager pre-installed, so it does still have some room to improve on the desktop experience. However, they don't seem content to let Gnome's stubbornness impact the average end user, which I do appreciate.

I'm not too fond of the default Ubuntu experience with the dock on the side, but it's easy to configure it to meet my preferences in the standard settings.

Beyond all that, I like the Gnome experience and Ubuntu provides it with a good mix of stability and modern hardware support with the Linux HWE Kernel.

## Arch Based Distros
The Arch based distro I hear about most is [Manjaro](https://manjaro.org/), so I'll address that first. As far as I can tell, the Manjaro project is completely mismanaged, so I didn't even bother trying it in a VM. Repeated issues with [SSL certificates expiring](https://forum.manjaro.org/t/software-manjaro-org-expired-certificate-again/119696) (once is one thing, but it keeps happening), [DDoSing the AUR](https://gitlab.manjaro.org/applications/pamac/-/issues/1017), [issues playing nice with others](https://blog.brixit.nl/why-i-left-pine64/); and that's just what I found in 5 minutes of searching. It doesn't seem like this is going to be a stable or trustworthy experience.

Putting that aside, I did want to look at Arch based distros to see how it is, so I tried [Garuda Linux](https://garudalinux.org/), [EndeavourOS](https://endeavouros.com/), and [CachyOS](https://cachyos.org/) in VMs to see what was up. Unfortunately, they all had basically the same problem: being *exclusively* for advanced users.

Honestly, I would love to be able to try these distros in more depth, because I think it could be really interesting to see if those more advanced tools could really improve my own personal experience. Until Linux has more of a market share and loses that reputation of needing technical expertise to use, I don't want to give up the ability to recommend the distro I use to less technical users.

With that in mind, the fact that these distros don't prioritize having a user-friendly app store experience and comfortable defaults means that I need to disqualify them for this round of distro hopping. If something changes and Linux does become more mainstream (maybe not fully taking over, but enough that people aren't afraid of it), I will likely re-evaluate these distros. Until then, I'll just have to try running base Arch in a VM.

## Immutable Distros (and Elementary OS)



* **Bazzite** was removed because I didn't realize it was an immutable distro. While I think immutable distros make a lot of sense in the server and handheld spaces, I'm not yet convinced they make sense in the desktop space.
  * There are still a lot of tools that either aren't available as a Flatpak or that the unofficial Flatpak doesn't work. I'm also not sure some tools I use (Gparted, Raspberry Pi Imager, etc.) are even viable in a sandboxed format like Flatpak.
  * I'd also rather not need to use a container to run development tools. I'm sure I could run the Go compiler that way, but having it installed natively is going to be simpler.
  * I'll be happy if I'm proven wrong and the tooling improves to the point where it is viable, since the security and reliability of immutable distros would be great in the desktop space. ~~However, I'll wait for SteamOS to be the distro to test it since that'll have a lot more cultural relevance to try and make it work.~~ (Or not since even [Valve doesn't think SteamOS is a replacement for a desktop OS.](https://store.steampowered.com/steamos/#:~:text=Users%20should%20not%20consider%20SteamOS%20as%20a%20replacement%20for%20their%20desktop%20operating%20system).)
* **Elementary OS** was eliminated for *only* supporting Flatpak. I fully believe that Flatpak is the future of Linux app packaging, but there are still a lot of apps that I use that aren't available as a Flatpak or are only available as an unofficial package (some of which are just non-functional).
  * I can still install them using `apt` in the terminal, but that goes against my goal of recommending it to others.

## Fedora Variants
* **Fedora Cinnamon** was eliminated for `dnfdragora` being it's only graphical package manager out of the box.
  * I may bring it back later and manually install GNOME Software just to see a non-Mint implementation of Cinnamon.
* **Nobara** has been eliminated. The main version of it only includes a terrible custom software manager.
  * In the GNOME version, the fact that their custom software pops up to update things instead of just leaving that to GNOME Software (which is still there) is unnecessary noise that I just found annoying. At least at an initial inspection, it didn't seem to add anything to the GNOME experience, so all that was left that I saw to redeem it was the Nobara Tweaks app, which looks like it was thrown together at a code jam and then never improved again.
  * Didn't even bother checking out the KDE version after the GNOME version.

## Misc
* **Slimbook OS** was eliminated because I couldn't even get the boot-able ISO to run in the VM.
* **PikaOS** was eliminated because I couldn't even get the boot-able ISO to run in the VM.
* **Zorin OS** was eliminated because it is on version 6.8 of the kernel, and doesn't have a clear, graphical way to update it. Originally, this wouldn't have bothered me, but I learned how important that is in my time evaluating [Linux Mint](/software/linux/distro-hopping-2025/mint?id=kernel-issues) on the new system.
