<!-- omit from toc -->
# Distro Hopping 2025
In early 2025, I build a new desktop PC and decided to see what other Linux distros are like after using the same one for over a decade. The goal will be to spend a month with each distro before moving on to the next. I may add or remove distros based on early impressions or issues I encounter with installation.

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
<!-- TODO: Update this to past tense once I'm done with everything. -->
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
  * Read the [Re-Evaluating My Hardware Setup](#re-evaluating-my-hardware-setup) for details.

### Recommending it to others
In addition to my own use case, I'd also like something that I can recommend to anyone new to Linux. Being able to say "I use this everyday, it's really stable and it just works" is really powerful. Being able to give people a clear demo on my own personal machine and say "no, I didn't need a terminal to get any of this working" is a big thing that could help anyone interested in switching to Linux but is anxiously thinking that you need to be technical to use it.

I'm not necessarily trying to find a "one size fits all" distribution, so much as one that I think isn't going to be especially uncomfortable for anyone open to making the switch to Linux and that doesn't require any significant technical experience to use.

#### Accessibility Tools
I do want to consider accessibility when I think about being able to recommend Linux to others, in case someone I recommend things to have any kind of visual impariment or other accessiblity needs. However, in light of [a recent article about the state of accessibility tools on Linux](https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/), it's hard for me to really recommend Linux to those with accessibility needs. That being said, I don't want to just leave it at "oh well, can't be helped", so moving forward I will at least verify that each distro has Orca pre-installed (even if it isn't available for the distro installation). Any distro that doesn't will be disqualified at that point. That way I can at least say that the distro I ultimate choose is keeping up with the bare minimum.

## Pre-Check: Running in a VM
Before getting into the full distro hopping experience, I spent a few days running each OS in a VM to get a feel for the desktop environment and see if there are any obvious deal breaker issues. I mostly just looked through the desktop environment settings a bit, checking out what graphical package manager it uses, and generally getting a first impression of the OS. 

I'm only going to record notes here for distros that stand out in some way or that outright fail, so I can document *why* they failed rather than just cross them off the list and move on. I also be skipped Linux Mint, Fedora Workstation, and Tuxedo OS, as I feel I have a solid enough understanding of them from my daily use of Mint and my [2024 attempt at distro hoping](/software/linux/distro-hopping-2024.md) to say that they are worth checking out for the full month.

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
* **Zorin OS** was eliminated because it is on version 6.8 of the kernel, and doesn't have a clear, graphical way to update it. Originally, this wouldn't have bothered me, but I learned how important that is in my time evaluating [Linux Mint](#kernel-issues) on the new system.
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

## Re-Evaluating My Hardware Setup
?> **Note:** If all you care about is the Linux distro evaluations, go ahead and skip this section. I'm mainly just documenting it here for some additional context around my hardware setup, as it is a bit unconventional and could have an impact on my experience with these distributions.

After doing the VM test, I started encountering some hardware issues causing me to re-evaluate my setup before proceeding.

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

For now, I'm going to keep the rack mount setup with only the office and living room and hook up an old Steam Link I have in the living room for couch gaming. I'll also be investigating and testing options for a thin client on an Intel NUC I have lying around. That way I have the fewest compromises while distro hopping and have the opportunity to test the tools for all three options. Then once I've selected the distro I like and want to run long term, I'll come back to this question and re-evaluate my hardware setup again with more information.

## Running Each Distro
### Linux Mint
I started by getting a baseline on the new hardware with Linux Mint. This also gave me an opportunity to take a look at Mint again through a more critical lense.

In general, I like Linux Mint as an operating system; it provides a good balance of simplicity and configuration, a comprehensive suite of tools out-of-the-box, and solid support through the Mint Forums (plus the Ubuntu base means that sites like AskUbuntu are also usually helpful). I generally don't have issues with app compatibility in Mint, with the only real exception being Davinci Resolve (which I think may have been as much about hardware support as software).

At the end of the day, there is good reason why I've been fairly happy with Linux Mint for over a decade, but this latest review of it has definitely revealed a few issues I may have just gotten used to. I can't say any of the following issues are individually deal breakers, but together they do help justify checking out other distributions.

#### Kernel Issues
Despite this being an upgrade from the previous version of Mint to the latest (21.3 Edge to 22), I immediately ran into issues with it being on an older version of the Linux Kernel. Mint 22 ships with the 6.8 LTS version of the kernel, which unfortunately doesn't have drivers for my motherboards network chip.

Luckily, Mint does have [a simple graphical tool to install different version of the kernel](https://www.fosslinux.com/138008/how-to-install-and-try-different-linux-kernels-in-linux-mint.htm), so, using an ethernet-to-USB adapter, I was able to connect to the internet and update to a kernel that does support my hardware without much trouble.

I understand the Mint team likely made that decision to prioritize stability, but unfortunately, that only matters if the system works in the first place. This is also the third time I've encountered these kinds of issues with Mint being on an older kernel ([wifi issues I think were from kernel driver](/software/linux/framework?id=wifi-issues) and [8bitdo controller driver headers](/software/linux/distro-hopping-2024?id=gaming)) not to mention the [initial issues with Framework laptops](https://forums.linuxmint.com/viewtopic.php?t=362759) when they first released.

Unless the Mint team commits to supporting a version with a more up-to-date kernel like they did with Mint 22.2/3 Edge, it's becoming harder and harder for me to reliably recommend Linux Mint. It's not quite a disqualifier since there is a relatively simple fix, but it's still not a strong start.

#### Remote Gaming
I've never really had issues running any of the games I want to play on Mint, but as stated in the [Re-Evaluating My Hardware Setup](#re-evaluating-my-hardware-setup) section, I wanted to try remote gaming for couch play in my living room.

I started trying with Steam Link since I do have a couple of the official Steam Link client devices that Valve used to sell. At first, everything went well with the Steam Link being able to identify the PC no problem and the built in network test came back positive.

Unfortunately, that's where the positive experiences ended. When I actually connected to the computer, the screen would just stay black with a loading icon. I could sometimes heard the sound from Steam Big Screen mode opening up and if I went to the computer it was open, but the Steam Link couldn't see it or control it. 

Not sure if this is an issue with Mint or Steam, but I was able to verify it wasn't the Steam Link device, since I got the same results when I found out my TV can run the Steam Link client software. For now, I'll ignore it and try Steam Link again on the next distro to get a better picture of where the problem is coming from.

After that, I decided to try running [Sunshine](https://github.com/LizardByte/Sunshine) to connect from [Moonlight](https://moonlight-stream.org/) since it is designed to be low-latency and also gives me a solution to remotely connect to the desktop from my laptop. It's also pretty easy to set up in the living room, since there is a Google TV app.

Setting up the apps and connecting was exceptionally easy, so this solution may be worth keeping in mind if I decide to switch from my current setup to using a thin client for my home office, but there were a few issues keeping it from helping with my living room setup.

I did encounter some bitrate issues causing me to lower the resolution to 1080p, which is a bit disappointing for couch gaming on my 4k TV. There may be some ways to tune the bitrate with fewer compromises, but I didn't really bother figuring that out because I ran into a bit more of a deal breaker. Unfortunately, due to no fault of Linux Mint or Moonlight/Sunshine I can't really use this for couch gaming because my TV doesn't support [2.4Ghz wireless controllers](https://www.reddit.com/r/AndroidTV/comments/11ye35n/problem_connecting_8bitdo_ultimate_24g_controller/).

I could always use a thin client PC to connect with Moonlight, but at that point I'd rather just get a Steam Deck (or similar) and play games directly on that device for my couch gaming. If I can't get the Steam Link working on the next distro, I'll look into other options, but may need to fall back to the Steam Deck idea.

#### Misc Issues
There were also a few smaller issues that I encountered while re-evaluating Linux Mint. Nothing too severe, and it's hard to tell what the root cause of these issues were so it is possible they were not Mints fault. Because of that, I will be keeping an eye on it as I move through more distros.

The first issue worth calling out is a simple system crash. Twice, when I went to my computer, it wouldn't respond to anything. I could see the prompt to put in a password, but the background was missing and it wouldn't respond to any input. I had to hard restart the computer and then everything seemed to work fine. It did only happen twice, and I have a theory that it's something to do with the Steam issues I encountered since it was running both times, and I never encoutered when Steam wasn't running, but unless I see a lot more crashes on the other distros then it's a big knock against Mint as a stable system.

I also encountered some issues opening Steam after my issues with Steam Link. For some reason, when I would try to open Steam, it would repeatedly fail to open the UI. I spent some time trying reinstalling Steam and updating some configurations in the `.desktop` file based on some [info I found in the Mint Forums](https://forums.linuxmint.com/viewtopic.php?t=400351), but without any real luck. I was able to find a few workaround options to get Steam running (opening through the Mint Software Manager, right clicking on the menu entry and opening to library, or deleting the `.desktop` file and bringing back the "Install Steam" icon that the Steam installer initially creates).  
Not sure if this was caused Steam Link or if I just happened to noticed it after that and it was Mint or the `.deb` version of Steam, but it is something else I want to keep an eye on as I test other distros.

The last issue I encountered wasn't so much an error as much as functionality Mint just doesn't support. I decided to try connecting my Meta Quest 3 to Steam VR, both through Steam Link VR and a wired USB-C connection. Not much to say other than that it didn't really work. I'm not sure how much of it is VR on Linux not being fully mature, Meta Quest 3 not supporting Linux well, or Mint still being on X11 rather than Wayland. Regardless, if I can get it working on other distros, it'll be another unfortunate knock against Mint.