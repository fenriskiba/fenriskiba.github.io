<!-- omit from toc -->
# Linux Distro Hopping
<!-- TODO: Go through at the end of the whole distro hopping experience and make sure there is a consistent tense, has a consistent tone, and has a consistent voice. -->

!>**Update:** Due to a number of higher priority projects suddenly taking up my time, I will be putting this on hold after completing my testing in Linux Mint. I do intend to pick it up again once things have settled down, but in the meantime, I need to both free up some time and have a consistent and stable computer to use. As a result, I will be remaining on Linux Mint until a few other projects have been completed.

In early 2025, I built a new desktop PC and, after using the same Linux distribution for over a decade, decided to see what other distros are like. To do so, I decided to hop around a few distributions and stick on them for about a month each to see how they performed for extended use. I figured a month would be enough time to really get a good feel for the full scope of the OS rather than just an initial impression.

Unfortunately, due to external issues taking up my time and energy, Cosmic desktop delays, and overall more complexity that I had anticipated, that plan didn't really pan out the way I had hoped. As a result, I decided to take my learnings from that, finish doing some more research to help streamline some of the testing I wanted to do, and try again in 2026.

Since I don't want my external struggles and my learning process to color the final results of this, I've compiled the information that I think is relevant and archived the rest of what I had written for 2025. I've also limited the scope of some of what I want to try because of other external limitations and gaps in my expertise that I'd rather not lead to any false impressions anyone reading this may have.

**Table of Contents:**
- [The Criteria](#the-criteria)
  - [My Use Case](#my-use-case)
  - [Software I'll Try](#software-ill-try)
    - [Gaming](#gaming)
    - [Remote Connection](#remote-connection)
    - [Video Streaming/Editing](#video-streamingediting)
    - [Android Emulation](#android-emulation)
  - [Recommending Linux To Others](#recommending-linux-to-others)
- [The Plan](#the-plan)
  - [Distros I'll Try](#distros-ill-try)
  - [What I've Already Done](#what-ive-already-done)
  - [Some Final Pre-Testing](#some-final-pre-testing)
  - [Distro Hopping](#distro-hopping)

## The Criteria
The first thing that's going to be really important for this is to understand what I'm looking for in an operating system. Most distributions are good for the right use case, so understanding my use case is important which distro will be good for me.

### My Use Case
In general, I use my personal computer for casual gaming, 3D printing, and occasionally for programming (primarily using Go, ReactJS, and Python). I like to be able to customize my desktop, but I don't get too into ricing every part of the UI. I also have separate rooms for my home office and gaming space, and while I currently have a solution to directly connect to my desktop from either, I am considering switching to using a thin client in my office to connect to my desktop in the game room.

For the most part, software I normally use is mostly Linux native and works perfectly fine (I have been using Linux for over a decade after all), so the primary focus when considering a distro is to make sure I have a stable system out of the box that has all the functionality I'd like and that I can quickly and easily customize to my liking. 

<details>
  <summary>Expand if you are curious what software I use and know works well on Linux.</summary>

* Basic Web Browsing
  * Every major browser (except Safari) is available on Linux
* Software Development (Go, Node, and Python)
  * Visual Studio Code
  * Podman/Podman Desktop
* Virtual Machines running in GNOME Boxes
* 3D Printing
  * PrusaSlicer and Bambu Studio have official releases on Flathub
  * OrcaSlicer has an official Flatpak build and is [looking at publishing it to Flathub](https://github.com/OrcaSlicer/OrcaSlicer/issues/3949)
  * Cura has an official AppImage build for Linux and an unofficial Flathub release (which in my experience, works better than the official build)
  * I use OnShape for some basic 3D modelling, but it is browser-based so the operating system isn't really important for it
* Diagraming with Draw.io
* Communication with Discord and Zoom

</details>

I'll also say that, I am fairly comfortable in a terminal and have some basic knowledge of Linux file systems, but I'm by no means an expert on them and (with the exception of my software development tools) would like to avoid needing those skills as much as possible in my free time. I often worry about software updates coming in and breaking customizations made at a lower level, plus I find it easier to [recommend Linux to others](#recommending-linux-to-others) if I have experience that I can reference when I say, "you don't need to be technical to use it".

It's probably also worth talking a bit about my hardware. I do use two monitors, but they are in different rooms and mirror each other since they are connected to a rack-mounted system in a server closet. I also have an AMD Ryzen 9 9950X and a Radeon RX 7900 XTX, so Intel and NVIDIA support will be a bit of a gap in my review.

### Software I'll Try
In addition to the usual software that I use everyday and that I already knows works fine, there are a few tools I want to try out to better understand how well they run on Linux and if there are any differences between distros. In some cases, these are things that I may want to try in the future, are common things that people I know may be interested in, or are just interesting tools that I want ot better understand. Not everything is necessarily a specific application, but may be a certain use case that I am interested in (ex. game streaming or remote desktop connections).

#### Gaming
For gaming, I'll be looking at a variety of games to cover a number of different considerations. I'm not going to do any comprehensive testing with them; instead I'll just boot in and make sure the game can run. The specific list of games will be established during my [final pre-testing on Fedora](#some-final-pre-testing) but will include:
* Celeste - This is just a favorite of mine that is quick and easy to test.
* Some kind of AAA/more graphically demanding title.
* A game from a game store other than Steam (ex. Epic Games Store).
* A Gamecube game and/or PS2 game on an emulator.

I'll also be trying some game streaming using tools like a Steam Link or apps like Sunshine/Moonlight, so that I can set up a couch streaming setup. This will be tested using either official Steam Link hardware (I got a couple before Valve discontinued them) or on a mini-PC running the same distro I'm testing out.

?>**Note:** I would also try VR games, but don't want hardware to be a confounding factor. I have a Meta Quest 3, which seems to be less compatible than other options. I'll probably look into VR more once the Steam Frame is out, but only really with that headset.

#### Remote Connection
I'll also be looking into options to remotely connect to my PC from either my laptop or a thin client. There may be some overlap with the game streaming testing (theoretically, there's no reason you couldn't use Sunshine/Moonlight that way), and I'll use the same mini-PC for some initial testing. Once I find an option I think works well, I'll also likely try connecting from my personal laptop (running Linux Mint) over wifi to see how it handles less consistent connections.

#### Video Streaming/Editing
Getting into software that I don't personally need as much is video software. While I know Kdenlive will work for video editing on Linux, I'd like to understand how hard it is to set up DaVinci Resolve to understand how technical a person would need to be for me to recommend it to them.

I'd also like to try some live streaming with OBS (and maybe VTube Studio since it *should* work with Proton) in case I ever decide to try doing some streaming. I'm also just curious about the technology and would like to learn more. I expect OBS will mostly work fine on all distros since it does have an officially supported Flatpak build, but it's worth it to try out to understand what it's like.

#### Android Emulation
On any distros that currently support Wayland, I'll be doing a quick test with Waydroid just to see how well it works and integrates with the system. I may look into alternatives for X11 distros, but if I can't find anything quick and easy to set up, I'll just leave it at "Waydroid will be available when they migrate".

### Recommending Linux To Others
In addition to my own use case, I'd also like something that I can recommend to anyone new to Linux. Being able to say "I use this everyday, it's really stable and it just works" is a lot more powerful than saying "yeah, my setup is really complicated, but it doesn't need to be" when trying to convince someone to try new things. Being able to give people a clear demo on my own personal machine and say "no, I didn't need a terminal to get any of this working" is a big thing that could help anyone interested in switching to Linux but is anxiously thinking that you need to be technical to use it.

I'm not necessarily trying to find a "one size fits all" distribution, so much as one that I think isn't going to be especially uncomfortable for anyone open to making the switch to Linux and that doesn't require any significant technical experience to use.

Towards that end, I'll be looking for things to be somewhat intuitive to someone coming from Windows/MacOS and that provides most of the capabilities that I think an average user would look for without needing to use a terminal. I don't think things need to necessarily be the same as Windows, but it needs to be clear enough that someone who isn't technical but is willing to try something new can figure it out on their own.

?>**Note:** The biggest exception to this is going to be that I am *not* qualified to evaluate accessibility tools. Given [a recent article about the state of accessibility on Linux](https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/), I am not particularly comfortable making any recommendation to anyone with accessibility needs without a larger conversation about their needs, their technical ability, and the compromises they are willing to accept. Even then, I would need to do a lot of research and would need to make clear that I don't have any first hand experience with these tools.

## The Plan
With all the considerations in mind, there needs to be a clear plan to make sure everything is properly evaluated, the testing is fairly consistent, and I don't exhaust myself running through all of this.

### Distros I'll Try
The best place to start is with the distros I'm planning to try out. These are distros that have a certain bare minimum of support (both official and community), are fairly user friendly, and [weren't disqualified for other reasons](/software/linux/distro-hopping/disqualified).

* [Linux Mint](https://linuxmint.com/)
* [Fedora Workstation](https://fedoraproject.org/workstation/)
* [Fedora KDE](https://fedoraproject.org/spins/kde)
* [Tuxedo OS](https://www.tuxedocomputers.com/en/TUXEDO-OS_1.tuxedo)
* [Zorin OS](https://zorin.com/)
* [Pop!_OS](https://pop.system76.com/)

I think this gives a fairly balanced perspective on desktop environments, different bases (ex. Ubuntu/Debian based vs Fedora Based), and kernel versions. It'll also give me an idea how much of a difference Wayland makes compared to X11 for the average user.

### What I've Already Done
I also want to quickly review what I've already done and what the takeaways were. In 2025, I already tried out most of the distros I'm planning to test, with the exceptions of Zorin OS (because I misunderstood the kernel version it's using) and Pop!_OS (because of delays in the release of the Cosmic desktop).

Without getting too deep into exactly what happened, the main takeaways from the experience were:
* Despite having used Linux Mint for years and really liking the Cinnamon desktop, I ran into a number of issue. However, it does seem that those issues may have been resolved.
  * The most frustrating issues were lack of hardware compatibility, but [Mint has migrated to using a Hardware Enablement (HWE) Kernel](https://blog.linuxmint.com/?p=4860), which should resolve that problem.
    * Even before the new direction, I was able to keep using Mint, because Mint does have an easy to use tool to switch to another supported kernel.
  * I also dealt with a number of bugs and crashes, but I believe those were all caused by issues in the Steam Client not implementing GPU acceleration well.
* Despite my [issues with GNOME](/software/linux/distro-hopping/desktops?id=gnome), I do like the Fedora experience *after installing several GNOME Extensions*.
  * I'm also really interested in Fedora, because I have a Framework laptop and Fedora is consistently given [official support by the Framework team](https://frame.work/linux).
  * The need for extensions does have me worried about my ability to recommend to less technical users.
* While I don't think the KDE experience is bad, I don't think it's for me and I'd only really recommend it to someone who wants to spend some time customizing their system.
  * I also encountered bugs in both KDE distros I tried, but I got the impression that they were more likely coming from either the distro or a bad install rather than the desktop.
  * Despite the fact that I don't think I'll really stick with them, I do want to give the KDE distros another try just in case and to see if the bugs just came from a bad install.

In addition to what I did learn, I also felt like there was a lot that I wanted to learn and didn't. A lot of the [apps I've decided to try](#software-ill-try) were originally planned for the 2025 distro hopping experience, but I never got around to testing them. A lot of it came down to my plan to spend one month on each distro and didn't really have consistent time and energy to learn how to set up each of these tools.

### Some Final Pre-Testing
Since one of the takeaways from 2025 was that I didn't have time to figure everything out each month, I'm going to start by taking my time and figuring out how to set up all the software I want to try in Fedora (since that's what is currently installed on my desktop). I'll be taking clear notes and putting together a detailed plan that I can hopefully follow on each of the other distros.

My goal is to get all of this done when I have some time off during the 2025 holidays, but if that doesn't work out, I will take as much time as needed to have a clear idea of what I'm doing.

### Distro Hopping
All that finally leads into the actual plan to start distro hopping.

Since I'm [putting together the plan on Fedora Workstation](#some-final-pre-testing), I'm going to just leave that distro there. I think I've already learned a lot about the Fedora experience and will probably be learning more about it than the other distros while I'm putting the app testing plan together.

For distributions that I tried in 2025 (Linux Mint, Fedora KDE, and Tuxedo OS), I'm planning to spend only two weeks with each of them. However, if it takes me longer to get through the app testing, then I'll stay on that distribution until I do have time to get through everything.

For Zorin OS and Pop!_OS, I'll be spending four weeks with each to get a clear idea of how they work and what the full experience of using the distros is like. Additionally for Zorin, I'll also do a quick test with Zorin 17.3 just to verify that the HWE kernel it came with doesn't encounter the issues I ran into when Linux Mint was on the LTS kernel. I won't stay on that version any longer than I need to be to validate that my hardware is working as expected and will do all of the application testing on Zorin 18.

Combining that with my experience from 2025, I should have all the information I need to make a decision on what distro I want to use. As a final test, I'll upgrade the mainboard on my Framework laptop (likely to one of the Ryzen AI 300 series mainboards) and make sure the distro I chose works well on that hardware. If that doesn't go well, I'll determine a plan at that point based on what went wrong and with which distribution. Otherwise, I think I'll have found the distribution that I'll be sticking with for the foreseeable future.