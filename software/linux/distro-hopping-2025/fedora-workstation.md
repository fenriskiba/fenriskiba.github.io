# Fedora Workstation
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

The first distro after re-establishing my baseline on mint was [Fedora Workstation](https://fedoraproject.org/workstation/). I've looked at Fedora before, but never really used it too actively, so this will be much more of a new experience for me.

Initial impression with Fedora is that I'm not a big fan of the out of the box experience (I'll get to that when I talk about [GNOME](#gnome)), but with a few extensions it can be really nice (though not *entirely* without issue) and looks really good in my opinion.

On a personal level, it would be really great if Fedora works out for me, because I do use a Framework laptop and Fedora seems to be the first to get [official support](https://frame.work/linux) from the Framework team.

Aside from that, I'm a bit unsure about the version of the kernel that Fedora uses. Fedora remains on the "stable" version of the Linux kernel, which is great for anyone who wants the latest and greatest, but it's less mature than options like Ubuntu's HWE kernel so there is a certain amount of risk there. That being said, I never encountered any issues and I'm not sure if there is any recent history of issues in the stable kernel.

## Fedora Setup
The process to install Fedora seemed a lot more streamlined that I remember from setting it up on a VM. Not sure if they improved it since then or if it just detects the machine type and makes installing on a PC easier, but regardless it was really nice to have a quick and easy install process.

After the install, I wasn't a huge fan of the out of the box experience with Fedora, but it is a really good base to customize and make what I want it to be. That does mean that I had to do some additional setup to make it work the way I wanted though.

### GNOME
#### GNOME Opinionation Rant
?> **Note:** A lot of this isn't super relevant to my experience with Fedora specifically, and while I do think Fedora could fix these problems the way Ubuntu has, it shouldn't be their responsibility to do so. That being said, it does play into how comfortably I can recommend Fedora to others, since I think these problems do impact the average user, and less technical users are going to have a hard time adapting to and living with the decisions of the GNOME Foundation and I think it's important to understand and address the root cause of those problems. I'm not going to claim to understand the full details and politics of the GNOME Foundation, so all of this is only speaking to my experience and the perception that that creates. I recognize that creates a risk of statements that aren't entirely fair to GNOME, and I am sorry about that. However, that's not an excuse to brush off these concerns as invalid or irrelevant, so I want to call them out all the same.

From watching some Linux Youtubers, it seems that I'm not exactly alone in my love/hate relationship with GNOME. I really like how they try to keep configurations and the general experience simple, but there are some common features that they stubbornly won't implement; even as a simple toggle in the settings app (especially annoying when that toggle [already exists in the GNOME Tweaks apps](https://itsfoss.com/gnome-minimize-button/) that *the GNOME Foundation built*). I love the library of extensions to help customize the experience, but I find it ridiculous that [the official tool to manage them](https://flathub.org/apps/org.gnome.Extensions) only [supports enabling them rather than installing them](https://askubuntu.com/a/1532054), doesn't comes pre-installed, and that GNOME has a reputation of breaking the extensions anyway. I appreciate that they want to raise the bar for application quality, but I can't comprehend why they seem to think they can force their opinionation onto application developers (ex. App Indicators and app styling/theming).

I really want to like GNOME and the experience it provides, but they seem determined to act like their opinions are the only ones that matter. I understand that part of using open source is that there is no obligation to build or support anything and that the project maintainers are well within their rights to focus solely on building what *they* want. However, whether they asked for it or not, they have gained a responsibility as one of the most popular desktop environments on Linux, and they aren't living up to it. They seem more than happy to use the influence that comes with that, but not to listen to many of the users that the influence comes from.

I appreciate how GNOME values quality, is clearly [trying to enable accessibility](https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/) (even if they have stumbled along the way), and provides an extremely simple set of configurations with clear avenues for customization. However, so long as they refuse to step outside their bubble and support differing opinions (not just allow them to exist with extensions, but support them directly through the most commonly requested configurations and strategies to minimize the risk of breaking extensions), it'll only be a matter of time before COSMIC or some other desktop with the same values of accessibility and simplicity comes and takes their place and their influence. I hate feeling like I need to root for COSMIC to replace GNOME rather than just serving as another competitor, but that's where the GNOME Foundation's stubbornness has left me.

#### GNOME Customizations
* Needed GNOME Tweaks to add min/max buttons
* [Add to Desktop](https://extensions.gnome.org/extension/3240/add-to-desktop/)
  * Technically wasn't supported on the version of GNOME I was on, but it worked fine.
* [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/)
* [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
* [Desktop Icons NG (DING)](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/)
* [Tiling Assistant](https://extensions.gnome.org/extension/3733/tiling-assistant/)
* [Wallpaper Slideshow](https://extensions.gnome.org/extension/6281/wallpaper-slideshow/)
* [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)

### Dev Tools
#### Git Credentials in libsecret
I found a [fairly straightforward guide](https://discussion.fedoraproject.org/t/attention-git-credential-libsecret-for-storing-git-passwords-in-the-gnome-keyring-is-now-an-extra-package/18275) for setting up a Git credential manager, that basically abbreviated the setup to two simple commands:

```bash
sudo dnf install git-credential-libsecret

git config --global credential.helper libsecret
```

#### Installing ZSH
Similarly, ZSH was a [pretty simple setup](https://fedoramagazine.org/set-zsh-fedora-system/) in only two commands:

```bash
sudo dnf install zsh

chsh -s $(which zsh)
```

Setting ZSH in VS Code: Terminal › Integrated › Default Profile: Linux

## Gaming
* same issue with Steam and Steam Link as Mint when using the rpm
  * Using Flatpak works
  * Still no luck with VR

## Misc
* Not a fan of Windows-like updates where the update happens while restarting instead of in the background and just restart to take effect
* Some buggyness when reorganizing a lot of apps around in the Show Apps view
  *  only started after moving multiple apps so not a big deal
* Weird issue with PrusaSlicer focus
  * will keep an eye on it, may have only been during initial startup