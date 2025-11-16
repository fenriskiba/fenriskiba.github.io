# Framework Laptop
?> **Note:** This was written a while ago, and many of the problems since then have been solved. I am however leaving this as a point-in-time, since I don't want to re-write it and I think keeping the initial problems out there is still overall a good idea. The fact that these were avoidable problems show that more work could have been done and hopefully ~~Framework and other laptop manufacturers can do more to work with the Linux community before release to prevent these kinds of problems~~ Linux Mint can do more to stay up-to-date instead of remaining on old versions of the kernel that don't support newer hardware. (Framework is doing a fairly good job of supporting certain distros now. I wish they could do more, but they are a small company and do need to make a decision between using more recent hardware and supporting distros that ignore newer hardware in the name of stability.)

Despite normally being a Linux user, for the past few years, I've been primarily using Macbooks at work and home. A friend convinced me to try one for personal use as an experiment about 5 years ago and I was able to get my work to provide me one over a Windows machine as well.  
Overall, I like the MacOS experience and, aside from the butterfly keyboard, the hardware was really nice. Despite that, I've been wanting to get back to using Linux. I'd rather not support Apple and their anti-competitive, anti-right-to-repair strategy.

Since I can't get a Linux machine at work (though I do want to try getting them to consider the [HP Dev One](https://hpdevone.com/)), I was looking for an opportunity to replace my personal Macbook.

When the excuse finally came, I decided I wanted to get a [Framework laptop](https://frame.work/) both because I want to support their right-to-repair focused plan and because it sounded like the exact class of laptop I wanted. I might have preferred a 15" machine, but the 3:2 aspect ratio helps make up for that and everything else about the machine matches what I'd look for in a new laptop.

As I make the transition back to Linux after 5 years away and as I try out a laptop from a new and relatively unproven manufacturer, I figured I'd record how it goes. This should help me remember things should I need to start from scratch and hopefully provide assistance if anyone I know wants to try themselves.

**<u>Framework Laptop DIY Edition (12th Gen Intel® Core™)</u>**  
**Processor:** Intel® Core™ i7-1260P (Up to 4.7 GHz, 4+8 cores)  
**Memory:** 16GB (1 x 16GB) DDR4-3200  
**Storage:** 256GB SSD  
**OS**: Linux Mint 21 Cinnamon

## Initial Setup
### Building the Framework
Since I did order the DIY version of the Framework, the first thing I had to do was install the memory and storage. It was actually a bit more difficult to get into than any laptop I've worked on before, but I think that's mostly because I haven't worked on a modern thin-and-light before. I'm not particularly fond of the clips that need pried open or needing to take the keyboard off to open it (the ribbon cable left me a bit more anxious than I'd like for a simple RAM install), but overall it still wasn't that hard; just more than I'd anticipated and a new experience that I wasn't expecting.

Once I was in, everything was much more like my previous experiences with opening up laptops. Installing the RAM that came with the Framework and a cheap M.2 NVMe SSD I already had was as simple as could be expected. Closing things up was also fairly painless (again, the ribbon cable for the keyboard wasn't fun, but that's just not being used to it) and from there I was able to move on to powering on my new toy.

### Installing Linux Mint
I decided to go with Linux Mint, since that's what I used back in college. It's a bit slow with kernel updates, which is a bit tricky with some of the newer hardware on the Framework, but its compatibility with Ubuntu, light-weight design, and relative user-friendliness made it a comfortable choice.

The setup went exactly like any other Linux install I've done: create a bootable USB, boot into it, follow prompts to install. I did run into some issues with the [Wifi](#wifi-issues), but I'll get into that later.

After the initial install, I followed a few instructions from the [Framework Mint  Install Guide](https://guides.frame.work/Guide/Mint+21+Installation+on+the+Framework+Laptop/159) to set up the utility buttons and fingerprint reader. For now, I haven't enabled the fingerprint reader (I only really want it for my password manager, which doesn't support `fprintd`), but I did set up an alias so I can easily enable it in the future. 

```bash
alias fprint-toggle="sudo pam-auth-update"
```

## Wifi Issues
As I said in [the previous section](#installing-linux-mint), I ran into some issues with the wifi driver during installation. It worked at first, but after about 5-10 minutes, it stopped loading anything. It still showed as connected to the network, but pages in Firefox wouldn't load and downloads for the install were happening at single digit Kb/s speeds. Eventually, I was able to get everything running again by restarting the network manager app with the following commands:

```bash
sudo modprobe -r iwlwifi && sudo modprobe iwlwifi && sudo systemctl restart NetworkManager.service
```

That let me finish installing Mint, but once I was all set up and signed in the same thing happened. If I reran the command, everything would work fine again until the next time I suspended or restarted the machine.

After a lot of research and a few failed fixes, I found [this suggestion on the Framework Forums](https://community.frame.work/t/linux-wifi-disconnects/18560/4) to disable AX modes by adding `options iwlwifi disable_11ax=Y` to the `/etc/modprobe.d/iwlwifi.conf` file. While I'm not a big fan of disabling functionality, it seems to be working and I can try disabling it if I notice updates to the wifi driver.

<!-- Tried using `backport-iwlwifi-dkms`, but it broke wifi. -->

## Fractional Scaling
Due to the pixel density of the Frameworks display being relatively high, I found it needs a bit of display scaling. I found that scaling around 150% works pretty well for the Framework.

Now that kind of fractional scaling is [surprisingly complex](https://askubuntu.com/a/1403864), which is why it's still a relatively new feature for most Linux distros. Luckily, Linux Mints Cinnamon desktop supports it out-of-the-box and it works fairly well.

There are some apps that don't work with it quite right though (most notably games).  
I had to implement a workaround to [make Steam scale at 2x](https://askubuntu.com/a/1341302) (not my preferred scaling ratio, but the Steam window is normally small enough that it works). I've also encountered a few apps that don't scale quite right in Wine, even after [updating Wines DPI settings](https://askubuntu.com/a/1337159).

### Cinnamon Screensaver Issue
When I first got the Framework, there was also [an issue](https://github.com/linuxmint/cinnamon-screensaver/issues/416) where the Cinnamon Screensaver (which also controls suspending when the lid closes) will reset any fractional display settings. Luckily that was fixed fairly quickly, which made the screen much more usable, but was replaced by [a new issue](https://github.com/linuxmint/cinnamon-screensaver/issues/424) preventing the lock screen from showing anything. I can still sign in by typing in my password and hitting enter, but I can't see the password prompt or anything.

## Power Tuning
The biggest detractor from the Framework is definitely the battery life. Especially when you take into account the fact that the Expansion Cards can drain the battery during standby. Using Linux with a few power tuning apps and 4x USB-C Expansion Cards (since those are just passthroughs that don't impact battery drain) has definitely helped bring it to an acceptable point, but given the price point of the laptop and the Expansion Cards being one of the selling points, I really shouldn't have to do that.

To help improve the battery life, I did do some basic power tuning setting up [`powertop` auto tuning](https://hobo.house/2015/12/18/linux-laptop-power-usage-tuning-with-powertop/), installing [tlp](https://linrunner.de/tlp/installation/ubuntu.html), and setting up [auto-cpufreq](https://github.com/AdnanHodzic/auto-cpufreq#auto-cpufreq-installer).

I also switched to using the [S3 sleep state](https://community.frame.work/t/ubuntu-21-04-on-the-framework-laptop/2722/7), because I'd personally rather review updates before installing them and don't think the minor (2-3 second) improvement in wake-time is worth the extra battery drain.

## Three Finger Swipe
Since Linux Mint doesn't support multi-finger gestures out-of-the-box, I had to install and setup [libinput-gesture](https://fostips.com/3-4-finger-touchpad-gestures-linux-mint/#rb-Method-2-Use-libinput-gestures).

I had some issues with the graphical installation method, but installing through `apt` went smoothy and configuring my gestures for switching between workspaces was fairly easy once everything was installed.

## Dev Tools
I am a software developer, and as such I do like to maintain some basic development tools; even on my personal computers. For most tools, like VS Code, NVM, and Go, I didn't encounter any problems and the normal install instructions worked great.

There were a few that didn't necessarily cause problems, but that I hadn't considered would take some additional work to set up.

### Git Credential Manager
One thing I wasn't aware I would was a credential manager for Git. Git security has come a long way since the last time I used Linux, but with that comes the need for additional local encryption.  
While MacOS and Windows have built in tools for securely managing Git credentials, it seems there isn't yet a clear default for Linux.

I ended up setting up [libsecret](https://www.softwaredeveloper.blog/git-credential-storage-libsecret), the git credential storage created by GNOME, and that seems to be working fairly well for me.

Due to the additional complexity in setting that up, I do want to review options again on the next Linux install I set up, but this solution seems to be working fairly well for me.

<!-- https://github.com/GitCredentialManager/git-credential-manager -->

### ZSH
For work I use a Macbook Pro, and I've gotten fairly used to using ZSH and the [Oh My ZSH](https://ohmyz.sh/) extensions and profiles. So, I wanted to see how hard it would be to set them up in Linux.

I found an easy to follow [tutorial on  installing ZSH on Linx Mint](https://techviewleo.com/install-and-use-zsh-with-oh-my-zsh-on-linux-mint/) (which would probably work for any Debian/Ubuntu based distro) and got it working much more easily than I had anticipated.

### Podman
I do a lot of work with containers and have been wanting to try [Podman](https://podman.io/) out for awhile. When I saw the instructions for setting up Docker Desktop on Linux were fairly complex and extremely distro specific, I figured this was the perfect opportunity.

Installing Podman was a fairly straightforward `apt-get install` command and there is an [official Podman Desktop UI](https://podman-desktop.io/) available through Flatpak.

The only other thing I needed to do was [set Docker Hub as the default image registry](https://github.com/containers/podman/issues/9390#issuecomment-970305169) since Podman doesn't do that by default.

#### Podman Compose
Since installing podman, everything as worked great, except for the lack of [Docker Compose](https://docs.docker.com/compose/) support. While there is an unofficial [podman-compose](https://github.com/containers/podman-compose) tool, that works reasonably well, it does have a fatal flaw: Podman doesn't seem to respect the `restart: always` flag in the compose file.

This may get fixed in a future version, but as of right now, I can't get it working and the lack of official support is disappointing regardless.

## Misc
A few other miscellaneous thoughts before wrapping up:
* Connecting to an SMB drive was much more straightforward than I expected.
  * Auto discovery through the default file manager with a great GUI.
* Lack of Chromium browser hardware acceleration on Linux is extremely disappointing when trying to watch Youtube videos.

## Closing Thoughts
Overall, I'm happy with my Framework, but may consider a machine from System76 or Tuxedo laptops in the future. I love the idea of a laptop with repair-ability build right into it,but Framework needs to really solve two problems if I'm going to consider upgrading this system rather than buy a new one:
* The battery life really needs to be improved. I'm hoping the AMD systems with larger batteries helps, but I haven't seen a comprehensive review of that yet so I can only hope.
  * Unfortunately, this is a problem that seems to effect everyone except Apple, so hopefully Framework can be the one to solve it.
* Framework needs to work more closely with the Linux community. Due to the nature of their product, they probably have a larger-than-average percentage of Linux users on their platform and they need to do more than just say "here's a forum, if you figure it out well publish it". Working with the Linux community more proactively, whether that's by contributing changes or selecting hardware that is known to work on Linux they need to make sure the product is compatible with Linux out-of-the-box if I'm going to keep buying from them.
* Linux Mint really needs to strike a better balance between reliability and modernization. They are always late to the party when it comes to hardware support and functionality, and it reflects badly on what is otherwise a great OS.