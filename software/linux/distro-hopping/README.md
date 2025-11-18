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

For the most part, I don't really expect to have any issues with any of the software I'm planning to use (I have been using Linux for over a decade after all), so my primary focus will be making sure I have a stable system out of the box that I can quickly and easily customize to my liking.

I'll also say that, I am fairly comfortable in a terminal and have some basic knowledge of Linux file systems, but I'm by no means an expert on them and (with the exception of my software development tools) would like to avoid needing those skills as much as possible. I often worry about software updates coming in and breaking customizations made at a lower level, plus I find it easier to [recommend Linux to others](#recommending-linux-to-others) if I have experience that I can reference when I say, "you don't need to be technical to use it".

### Software I'll Try
In addition to software I know generally works already...

* Steam Link/Moonlight for gaming
* Gamecube/PS2 emulation
* Remote connections for thin client
* Streaming with OBS (both PC games and console games).
  * I don't really have a lot of interest in steaming myself, but I am interested in the technology and would like to try learning it, and this seems like a good opportunity.
  * I may not actually test this on a real streaming platform, but just on a Discord server.
* Running Android apps on Waydroid.
  * This is not going to be a deal-breaker for the tie breaker as I don't have a use case for it and the biggest blocker is Wayland support, which the Mint team is working on, but I do want to try it out.
* Video editing with DaVinci Resolve.
  * Similar to Waydroid, this one will not be a deal-breaker as I don't need it, but I have heard it can be finicky, so I'd like to get some first hand experience trying to set it up.

...will also call out anything I unexpectedly do have issues with.

**Note:** I'd also put in VR, but don't want hardware to be a confounding factor (I have a meta quest 3, which seems to be less compatible than other options). May look into it more once Steam Frame is out.

### Recommending Linux To Others
In addition to my own use case, I'd also like something that I can recommend to anyone new to Linux. Being able to say "I use this everyday, it's really stable and it just works" is a lot more powerful than saying "yeah, my setup is really complicated, but it doesn't need to be" when trying to convince someone to try new things. Being able to give people a clear demo on my own personal machine and say "no, I didn't need a terminal to get any of this working" is a big thing that could help anyone interested in switching to Linux but is anxiously thinking that you need to be technical to use it.

I'm not necessarily trying to find a "one size fits all" distribution, so much as one that I think isn't going to be especially uncomfortable for anyone open to making the switch to Linux and that doesn't require any significant technical experience to use.

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