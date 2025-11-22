<!-- omit from toc -->
# Linux Distro Hopping 2026
<!-- TODO: Go through at the end of this and make sure there is a consistent tense. -->

In early 2025, I build a new desktop PC and decided to see what other Linux distros are like after using the same one for over a decade. To do so, I decided to hop around a few distributions and stick on them for about a month each to see how they performed for extended use. I figured a month would be enough time to really get a good feel for the full scope of the OS rather than just an initial impression.

Unfortunately, due to external issues taking up my time and energy, Cosmic desktop delays, and overall more complexity that I had anticipated, that plan didn't really pan out the way I had hoped. As a result, I'm going to take my learnings from that, finish doing some more research to help streamline some of the testing I'd like to do, and try again in 2026.

Since I don't want my external struggles and my learning process to color the final results of this, I'm going to be compiling the information that I think is relevant and archive the rest of what I had written for 2025. I'm also going to limit the scope of some of what I want to try, not because there are other limitations on what I can try and on my areas of expertise, and I'd rather not let those limitations present any false impressions anyone reading this may have.

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
  - [What I've Already Done](#what-ive-already-done)
  - [Some Final Pre-Testing](#some-final-pre-testing)
  - [Distro Hopping](#distro-hopping)
  - [Distros I'll Try](#distros-ill-try)

## The Criteria
The first thing that's going to be really important for this is to understand what I'm looking for in an operating system. Most distributions are good for the right use case, so understanding my use case is important which distro will be good for me.

### My Use Case
In general, I use my personal computer for casual gaming, 3D printing, and occasionally for programming (primarily using Go, ReactJS, and Python). I like to be able to customize my desktop, but I don't get too into ricing every part of the UI. I also have separate rooms for my home office and gaming space, and while I currently have a solution to directly connect to my desktop from either, I am considering switching to using a thin client in my office to connect to my desktop in the game room.

For the most part, I don't really expect to have any issues with any of the software I normally use (I have been using Linux for over a decade after all), so my primary focus will be making sure I have a stable system out of the box that I can quickly and easily customize to my liking. 

<details>
  <summary>Expand if you are curious what software I use and know works well on Linux.</summary>

* Basic Web Browsing - Every major browser (except Safari) is available on Linux.
  * I am currently re-evaluating which browser I want to use.
* Software Development - I do some development in Go, Node, and Python.
  * Visual Studio Code
  * Podman/Podman Desktop
* Virtual Machines running in GNOME Boxes
* 3D Printing
  * PrusaSlicer and Bambu Studio have official releases on Flathub
  * OrcaSlicer has an official Flatpak build and is [looking at publishing to Flathub](https://github.com/OrcaSlicer/OrcaSlicer/issues/3949)
  * Cura has an official AppImage build for Linux and an unofficial Flathub release (which in my experience, works better than the official build)
  * I use a OnShape for some basic 3D modelling, which is a browser-based and fully cross platform.
* Diagraming with Draw.io
* Communication with Discord and Zoom

</details>

I'll also say that, I am fairly comfortable in a terminal and have some basic knowledge of Linux file systems, but I'm by no means an expert on them and (with the exception of my software development tools) would like to avoid needing those skills as much as possible in my free time. I often worry about software updates coming in and breaking customizations made at a lower level, plus I find it easier to [recommend Linux to others](#recommending-linux-to-others) if I have experience that I can reference when I say, "you don't need to be technical to use it".

### Software I'll Try
In addition to the usual software that I use everyday and that I already knows works fine, there are a few tools I want to try out to better understand how well they run on Linux and if there are any differences between distros. In some cases, these are things that I may want to try in the future, are common things that people I know may be interested in, or are just interesting tools that I want ot better understand. Not everything is necessarily a specific application, but may be a certain use case that I am interested in (ex. game streaming or remote desktop connections).

#### Gaming
For gaming, I'll be looking at a variety of games to cover a number of different considerations. The specific list of games will be established during my [final pre-testing on Fedora](#some-final-pre-testing) but will include:
* Celeste - This is just a favorite of mine that is quick and easy to test.
* Some kind of AAA/more graphically demanding title.
* A game from a game store other than Steam (ex. Epic Games Store).
* A Gamecube game and/or PS2 game on an emulator.

I'll also be trying some game streaming using tools like a Steam Link or apps like Sunshine/Moonlight, so that I can set up a couch streaming setup. This will be testing using either official Steam Link hardware (I got a couple before Valve discontinued them) or on a mini-PC running the same distro I'm testing out.

?>**Note:** I would also try VR games, but don't want hardware to be a confounding factor. I have a Meta Quest 3, which seems to be less compatible than other options. I'll probably look into VR more once the Steam Frame is out, but only really with that headset.

#### Remote Connection
I'll also be looking into options to remotely connect to my PC from either my laptop or a thin client. There may be some overlap with the game streaming testing (theoretically, there's no reason you couldn't use Sunshine/Moonlight that way), and I'll use the same mini-PC for some initial testing. Once I find an option I think works well, I'll also likely try connecting from my personal laptop (running Linux Mint) over wifi to see how it handles less consistent connections.

#### Video Streaming/Editing
Getting into software that I'm not using as much is video software. While I know Kdenlive will work for video editing on Linux, I'd like to understand how hard it is to set up DaVinci Resolve to understand how technical a person would need to be for me to recommend it to them.

I'd also like to try some live streaming with OBS (and maybe VTube Studio since it *should* work with Proton) in case I ever decide to try doing some streaming. I'm also just curious about the technology and would like to learn more. I expect OBS will mostly work fine on all distros since it does have an officially supported Flatpak build, but it's worth it to try out to understand what it's like.

#### Android Emulation
On any distros that currently support Wayland, I'll be doing a quick test with Waydroid just to see how well it works and integrates with the system. I may look into alternatives for X11 distros, but if I can't find anything quick and easy to set up, I'll just leave it at "Waydroid will be available when they migrate".

### Recommending Linux To Others
In addition to my own use case, I'd also like something that I can recommend to anyone new to Linux. Being able to say "I use this everyday, it's really stable and it just works" is a lot more powerful than saying "yeah, my setup is really complicated, but it doesn't need to be" when trying to convince someone to try new things. Being able to give people a clear demo on my own personal machine and say "no, I didn't need a terminal to get any of this working" is a big thing that could help anyone interested in switching to Linux but is anxiously thinking that you need to be technical to use it.

I'm not necessarily trying to find a "one size fits all" distribution, so much as one that I think isn't going to be especially uncomfortable for anyone open to making the switch to Linux and that doesn't require any significant technical experience to use.

Towards that end, I'll be looking for things to be somewhat intuitive to someone coming from Windows/MacOS and that provides most of the capabilities that I think an average user would look for without needing to use a terminal. I don't think things need to necessarily be the same as Windows, but it needs to be clear enough that someone who isn't technical but is willing to try something new can figure it out on their own.

?>**Note:** The biggest exception to this is going to be that I am *not* qualified to evaluate accessibility tools. Given [a recent article about the state of accessibility on Linux](https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/), I am not particularly comfortable making any recommendation to anyone with accessibility needs without a larger conversation about their needs, their technical ability, and the compromises they are willing to accept. Even then, I would need to do a lot of research and would need to make clear that I don't have any first hand experience with these tools.

## The Plan
### What I've Already Done
* Tried with all the same distros except for Zorin (due to a misunderstanding about kernel versions) and Pop (due to Cosmic delays)
* Got a good baseline for desktop environments
* Fedora went well, but mixed feelings about GNOME
* Ran into issues with Mint that should either have been resolved via HWE kernel or disabling Steam Client GPU accel
* Ran into bugs on both KDE distros
  * I don't think any of the bugs were from KDE
  * Giving them a second chance in case it was a bad install

### Some Final Pre-Testing
* Initial tests are being run on Fedora for a baseline, since it's the most up to date (want to see if that actually matters)
* Tests include Steam Link, Remote Desktop, and [Other Software](#other-software-ill-try)

### Distro Hopping
* Distros I've tried (minus Fedora Workstation), I will just run through some last minute tests.
  * Mint will run tests + 1 week of running to test Steam issues
  * Fedora KDE and Tuxedo will be given two weeks each, to see if bugs were just a bad install
* Zorin and Pop will each be given 4 weeks
* Final test at the end: buy new Framework mainboard, and test distro on laptop

### Distros I'll Try
* [Linux Mint](https://linuxmint.com/)
* [Fedora Workstation](https://fedoraproject.org/workstation/)
* [Fedora KDE](https://fedoraproject.org/spins/kde)
* [Tuxedo OS](https://www.tuxedocomputers.com/en/TUXEDO-OS_1.tuxedo)
* [Zorin OS](https://zorin.com/)
* [Pop!_OS](https://pop.system76.com/)