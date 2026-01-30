# Distro Reviews
!> **Important:** The current contents of this page are based on my 2025 attempt at distro hopping and will get updated as I further evaluate and work through the 2026 effort.

## Linux Mint
?>**Note:** I have been using Linux Mint since college and have a lot of experience with it that I won't be able to develop for the other distributions I talk about here. That does mean there are things I can talk about in more depth with Mint that could influence some of how I talk about it, especially when it comes to support and hardware compatibility.

In general, I really like what [Linux Mint](https://linuxmint.com/) provides, and think the work they've done creating the [Cinnamon desktop](/software/linux/distro-hopping/desktops?id=cinnamon) has been very worth the effort. The Mint team has done a great job making everything more or less "just work", they have my favorite [solution to the NVIDIA proprietary drivers](https://itsfoss.com/nvidia-linux-mint/) (it even prompts you as a system alert the same way they prompt you to set up system backups), and has a great [support forum](https://forums.linuxmint.com/index.php) to rely on when you need help (in addition to all the Ubuntu support that usually also applies).

That's not to say I think Mint is perfect though. Luckily, my biggest issues were resolved with their [move toward the HWE kernel](https://blog.linuxmint.com/?p=4860), as I have had hardware compatibility issues that I've never encountered on other distros. It's still behind on other things, which means I can't try using Waydroid more, but from a functionality perspective I don't think that's too big a problem.

I'm also not fond of how the Mint teams has responded to the success of Flatpaks and Flathub. I am glad that they have decided to support Flathub in their Software Manager by default, and I think that is the most important piece so I don't think they've done anything to directly harm the user experience. However, I don't care for the bits of communication and warnings about it in the Software Manager. While I've come to accept the decision to disable unverified Flatpaks by default (I prefer official releases *from the developer,* and have found I don't really use many unverified Flatpaks), I still believe they've intentionally presented the risks much too aggressively to make them sound scarier than they are. Similarly, I really appreciate the fact that they provide an explanation of system packages and Flatpaks, but again they seem to imply that for the distribution developers are inherently more trustworthy than the developers, ignore that you still have to trust the developers with system packages (the Mint team didn't write the app, they just packaged it), and didn't give any context to Flatpaks taking (a very small amount of) additional storage. It all just seems like an openly biased way of presenting it to maintain control over the ecosystem instead of letting developers have control of the packaging of their apps.

For the most part, I still believe Mint is a great distribution that provides a lot of stability and ease-of-use. It's not the most up-to-date and some newer tools won't work on it yet, but when it does catch up to a feature, you can generally be more confident that it'll just work.

## Fedora Workstation
Overall, I have developed a bit of a love/hate relationship with [Fedora Workstation](https://fedoraproject.org/workstation/). There is a lot that I like about it, but it also has a lot of issues that I'd rather not have to deal with long term. Despite that, I may find myself using it some due to Framework most consistently [supporting Fedora](https://frame.work/linux) and I don't think I'd consider that too big a problem personally.

I think one of the biggest reasons why I have a love/hate relationship with Fedora is, unsurprisingly, the fairly vanilla [GNOME experience](/software/linux/distro-hopping/desktops?id=gnome). I won't rehash my views on GNOME, but I will say that Fedora could easily take small steps to make that experience better. Having GNOME Tweaks and Extension Manager installed by default and having some simple quality-of-life extensions pre-installed would go a long way towards making Fedora easier for me to recommend. Even just having the extensions installed and disabled could save someone from needing to spend time researching what they need and make the experience significantly better.

I also don't particularly care for Fedora Flatpaks because I've seen them be out-of-date compared to the official packages and because third-party packaging can cause issues like [what happened with OBS](https://gitlab.com/fedora/sigs/flatpak/fedora-flatpaks/-/issues/39). However, I'm not going to hold that against them too much, since it's pretty easy to disable them and Fedora is planning on [working with Flathub and switching over to it](https://blogs.gnome.org/mcatanzaro/2025/07/21/fedora-must-carefully-embrace-flathub/).

Finally, I don’t like that Fedora decides to install updates *while* restarting the way Windows does. That was something I got very accustomed to on Linux Mint, was being able to use my computer while updates were installed and then the reboot was just a reboot. That being said, it was still a faster and more reliable experience that I remember Windows being, so not that big a deal.

## Fedora KDE
I’ll be blunt on this one: my experience with [Fedora KDE](https://fedoraproject.org/kde/) was a mess. While I don't think it's a bad desktop by any stretch, [KDE Plasma](/software/linux/distro-hopping/desktops?id=kde-plasma) just isn't for me and I don’t think it’s organized well enough for me to want to recommend to someone who wants things to "just work".

In addition to that though, This was the buggiest operating system experience I have had in years. Right from the get go, Fedora KDE decided to default my display resolution to a 32:9 aspect ratio (I’m on a 43” 4k 16:9 display). It wasn't hard to fix (though KDE's unintuitive settings did delay getting it fixed for the lock screen), but the fact that I needed to is strange. I also had issues with Discover either not updating or crashing in the background (I'd get notifications that it crashed almost every time I log in). The most annoying and persistent issue though was that my browser would randomly crash without any kind of an error displayed.

Despite it's reputation for bugs, I don't believe any of these issues were KDE's fault because I didn't see them in Tuxedo OS and I'm kind of hoping that it was just a bad install (like most people, I didn't bother validating the checksum). Testing again in 2026 will hopefully go more smoothly.

## Tuxedo OS
Overall, [Tuxedo OS](https://www.tuxedocomputers.com/en/TUXEDO-OS_1.tuxedo) was a much better KDE experience than Fedora KDE was, and (unless something changes in 2026) will probably be the distro I recommend to anyone who I think KDE would be a good experience for.

My biggest complaint with Tuxedo was that installing it did require disabling secure boot, which was rather annoying since I don’t remember seeing any warnings about that when downloading the ISO, but it’s not too difficult and they provide [a way to re-enable it after installation](https://www.tuxedocomputers.com/en/What-you-always-wanted-to-know-about-Secure-Boot.tuxedo). Still, not a great user experience, so I hope they can fix that in the future.

Aside from that, I did encounter some issues where the login screen wouldn’t display correctly if certain USB devices got plugged in before waking up the display. It would still let me log in no problem, but it would look like none of my keyboard inputs were being recognized until I actually hit “Enter” to log in. For most people, it probably wouldn’t show up too often, but for me it was a bit more of an issue since switching between my desktop and laptop with my KVM switch would trigger it. Still, not a big deal since it didn’t actually stop me from logging in, but not a great experience either.

One other strange thing to note (not really a problem, just a bit odd): there were also a lot of pre-installed apps that I didn’t really need and would probably spend some time uninstalling if I were staying on Tuxedo long-term. Most of it seemed fine like card games and stuff that you’d find even on older, less bloated Windows systems, but Nextcloud Desktop was an odd inclusion to have pre-installed.

## Zorin OS
?> Coming Soon!

<!-- ### Zorin OS Pro
While I didn't use Zorin OS Pro, I did want to talk about it a bit.

Overall, I like the idea of a one-time payment to get some pre-configured software/themes and (more importantly) support. It helps fund the project and makes thing more sustainable, which is a real problem in a world where both companies and individuals alike are taking open source software for granted. The promise of support should also make the migration to Linux much less intimidating and more reliable for anyone coming from Windows or Mac OS.

However, I do have a couple of issues with how Zorin markets their Pro edition. I feel the way they present the additional software is somewhat disingenuous and the installation support isn't very comprehensive (at least not the way it's described in the marketing page).

#### Pre-Installed Software
Zorin Pro is described as coming with *"advanced productivity tools"* and a *"professional-grade creative suite of apps"*, but when you look into what all that means it's a lot less exciting than it's presented.

The first thing that tipped me off to the problem was that it is somewhat difficult to figure out what the pre-installed applications even are. The only way you can find it on their site, is as a zip file you can download that contains dumps of what seems to be every system package and Flatpak installed on the system (even extremely low-level packages like libraries and `bash` are listed). I had to [go to Reddit to find a proper list of applications](https://www.reddit.com/r/zorinos/comments/1mh1l5a/comment/n6t42xg/) and was extremely disappointed by what I found.

Most, if not all, of the pre-installed software is freely available, open source apps that can be installed with a single click in the software manager. Now, with the right presentation, I wouldn't really consider that a problem. Bringing more attention to open source tools that can do the same things as proprietary ones is great and providing them out of the box so that users don't need to research and install alternatives themselves is a totally reasonable way to provide additional value to anyone supporting the project. However, that's not an excuse to (seemingly intentionally) mislead users into thinking they are getting [*"over $5,000 of professional software"*](https://zorin.com/os/pro/#:~:text=over%20%245%2C000%20of%20professional%20software) by de-emphasizing the word "alternatives" with lower contrast, greyed out text.

I really worry that this way of presenting the apps will lead to people feeling like they've been burned and lied to and to not trust anyone making a more honest effort to help them switch to Linux. It also risks solidifying the impression people have of Linux as being buggy and less intuitive when some of those alternatives turn out to be wildly different from what they were expecting.
* People trained on Photoshop generally seem to struggle with how different GIMPs design is.
* FreeCAD and LibreCAD have been reviewed by makers who *want* to support open source, and they still find it lacking.
* Kdenlive is great for occasional use or amateur film editing, but doesn't have a lot of the features needed to replace a professional tool like Adobe Premier.

It's especially concerning that they are risking people getting the impression that Linux isn't capable of doing these jobs well when some of these tools have other alternatives, that work on Linux, without the same compromises in quality. They just can't be bundled with Zorin Pro due to it being proprietary or browser-based (ex. DaVinci Resolve or OnShape).

#### Zorin Pro Support
?>**Note:** Since I didn't use Zorin Pro, I obviously have never actually tried using the Zorin Pro support services, so I am very strictly basing this on what I found on the marketing site. If I find any information that contradicts what I'm saying here, I will update this section to focus on making the truth more clear on that site.

The other concern I have is that they only promise support for the initial installation of Zorin OS.

This has some similar concerns as with the software, where someone might think they are going to get more support past the initial setup. It isn't too clearly defined where [*"setting up Zorin OS"*](https://zorin.com/os/pro/#:~:text=or%20queries%20while-,setting%20up%20Zorin%20OS,-%3F%20Each%20copy%20of) and the support that comes with it ends. Personally, I would assume it stops once everything is installed and your are logged into your computer, but my parents would probably think it would continue into getting any software they need installed and configured.

I'd also argue that the support should go well beyond just the installation and be the most valuable part of the Pro edition. Especially for a distro that's explicitly marketed at people migrating from other operating systems, because that is the audience that is going to need the most help throughout their time using it. Marketing yourself as "the best distro for new users" and charging for support, only to tell them that they only payed for support for their first few hours of use? That just seems like setting your users up for failure and making people feel like they won't be able to be successful on Linux.

I recognize that supporting more than the initial installation would probably be difficult to scale up, so it may not be a realistic option to provide is as direct support in the same way. However, I think there are ways to help those users and make paying for the Pro edition much more worth it. A support forum with a bounty program for community members resolving Pro user problems. Additional "How To" guides that only Pro users get access to and that Pro users can request new entries into. Something to help them with the full scope of their migration to Linux rather than just the start of it and to help make the fairly high price more worthwhile. -->

## Pop!_OS
?> Coming Soon!