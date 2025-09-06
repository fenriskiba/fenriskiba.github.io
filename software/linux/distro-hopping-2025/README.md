# Linux Distro Hopping 2025
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

In early 2025, I build a new desktop PC and decided to see what other Linux distros are like after using the same one for over a decade. The goal will be to spend a month with each distro before moving on to the next. I may add or remove distros based on early impressions or issues I encounter with installation.

<!-- TODO: Once I'm all done, go through and make sure to make sure everything is in a consistent tense. -->

## Distros I plan to try
Obviously, I can't try out every distribution or even every currently maintained distro. For now, I've gotten it down the the following distros, though I may add to the list as time goes on and I learn more about the current state of the linux landscape.

* [Linux Mint](https://linuxmint.com/) (baseline)
* [Fedora Workstation](https://fedoraproject.org/workstation/)
* [Fedora KDE](https://fedoraproject.org/spins/kde)
* [Tuxedo OS](https://www.tuxedocomputers.com/en/TUXEDO-OS_1.tuxedo)
* ~~[openSUSE Tumbleweed](https://www.opensuse.org/#Tumbleweed)~~
* ~~[Pop!_OS](https://pop.system76.com/)~~

You can also read about a few other distributions I considered but ultimately decided against in the [Disqualified Distros page](/software/linux/distro-hopping-2025/disqualified.md).

## My Use Case
One of the great things with Linux is the variety of options available, but that also means that not every option is for everyone. Just cause a certain distro isn't for me, doesn't make it bad. Honestly, there are a lot of distros I'd be interested in exploring if it weren't for the fact that I want something [easy to use without technical experience](#recommending-linux-to-others).

With that in mind, this is the context of how I'll be evaluating these options. If you are interesting in using my experience to help choose a Linux distro, please keep this in mind in case your use case differs from mine.

<!-- TODO: Add section about my linux exp and comfort. -->

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