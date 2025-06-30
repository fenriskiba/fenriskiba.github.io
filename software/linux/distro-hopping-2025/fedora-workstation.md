# Fedora Workstation
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

The first distro after re-establishing my baseline on mint was [Fedora Workstation](https://fedoraproject.org/workstation/). I've looked at Fedora before, but never really used it too actively, so this will be much more of a new experience for me.

Initial impression with Fedora is that I'm not a big fan of the out of the box experience (I'll get to that when I talk about [GNOME](#gnome)), but with a few extensions it can be really nice (though not *entirely* without issue) and looks really good in my opinion.

On a personal level, it would be really great if Fedora works out for me, because I do use a Framework laptop and Fedora seems to be the first to get [official support](https://frame.work/linux) from the Framework team.

Aside from that, I'm a bit unsure about the version of the kernel that Fedora uses. Fedora remains on the "stable" version of the Linux kernel, which is great for anyone who wants the latest and greatest, but it's less mature than options like Ubuntu's HWE kernel so there is a certain amount of risk there. That being said, I never encountered any issues and I'm not sure if there is any recent history of issues in the stable kernel.

## Fedora Setup
The process to install Fedora seemed a lot more streamlined that I remember from setting it up on a VM. Not sure if they improved it since then or if it just detects the machine type and makes installing on a PC easier, but regardless it was really nice to have a quick and easy install process.

After the install, I wasn't a huge fan of the out of the box experience with Fedora, but it is a really good base to customize and make what I want it to be. That does mean that I had to do some additional setup to make it work the way I wanted though.

### Fedora Flatpak
I did disable the Fedora Flatpak repository in GNOME Software, because it always shows up before the Flathub versions of apps and I generally prefer using versions distributed by the application developers rather than by a third party.

I'd rather have the option to just lower it on the priority list, but for now I'll just keep it disabled.

### GNOME
#### GNOME Opinionation Rant
?> **Note:** A lot of this isn't super relevant to my experience with Fedora specifically, and while I do think Fedora could fix these problems the way Ubuntu has, it shouldn't necessarily be their responsibility to do so. That being said, it does play into how comfortably I can recommend Fedora to others, since I think these problems do impact the average user, and less technical users are going to have a hard time adapting to and living with the decisions of the GNOME Foundation and I think it's important to understand and address the root cause of those problems.  
I'm not going to claim to understand the full details and politics of the GNOME Foundation, so all of this is only speaking to my experience and the perception that it creates. I recognize that creates a risk of statements that aren't entirely fair to GNOME, and I am sorry about that. However, that's not an excuse to brush off these concerns as invalid or irrelevant, so I want to call them out all the same.

From watching some Linux Youtubers, it seems that I'm not exactly alone in my love/hate relationship with GNOME. I really like how they try to keep configurations and the general experience simple, but there are some common features that they stubbornly won't implement; even as a simple toggle in the settings app (especially annoying when that toggle [already exists in the GNOME Tweaks apps][gnome-tweaks-min-max] that *the GNOME Foundation built*). I love the library of extensions to help customize the experience, but I find it ridiculous that [the official tool to manage them](https://flathub.org/apps/org.gnome.Extensions) only [supports enabling them rather than installing them](https://askubuntu.com/a/1532054), doesn't comes pre-installed, and that GNOME has a reputation of breaking the extensions anyway. I appreciate that they want to raise the bar for application quality, but I can't comprehend why they seem to think they can force their opinionation onto application developers (ex. App Indicators and app styling/theming).

It also really troubles me that a lot of these features are things that the GNOME developers could implement and just never use themselves. Being able to add icons to the desktop, minimize applications, and see them in a readily visible dock would help people switching to Linux feel less intimidated by the new experience. Instead, the GNOME developers have said "nope, I don't like having them, therefore no one should have them". I don't understand why GNOME developers are so against functionality whose existence shouldn't interfere with their flow or could easily be set to a simple toggle, but would enable other people to use their computers the way they want and help dispel the notion that Linux is too big of a jump from other operating systems.

I really want to like GNOME and the experience it provides, but they seem determined to act like their opinions are the only ones that matter. I understand that part of open source is that there is no obligation to build or support anything and that the project maintainers are well within their rights to focus solely on building what *they* want. However, whether they asked for it or not, they have gained a responsibility as one of the most popular desktop environments on Linux, and I don't think they are living up to it. They seem more than happy to use the influence that comes with that, but not to listen to many of the users that the influence comes from or implement functionality that make it less intimidating to people switching to Linux.

I appreciate how GNOME values quality, is clearly [trying to enable accessibility](https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/) (even if they have stumbled along the way), and provides an extremely simple set of configurations with clear avenues for customization. However, so long as they refuse to step outside their bubble and support differing opinions (not just allow them to exist with extensions, but support them directly through the most commonly requested configurations and strategies to minimize the risk of breaking extensions), it'll only be a matter of time before COSMIC or some other desktop with the same values of accessibility and simplicity comes and takes their place and their influence. I hate feeling like I need to root for COSMIC to replace GNOME rather than just serving as another competitor, but that's where the GNOME Foundation's stubbornness has left me.

#### GNOME Customizations
Since I'm not too fond of the out of the box experience with GNOME, I did install GNOME Tweaks and installed a number of extensions. I used GNOME Tweaks to [enable the minimize and maximize buttons][gnome-tweaks-min-max] and installed the following extensions through the Extensions Manager app:

* [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/)[^1] - Whether GNOME developers like it or not, some apps basically need this for their full feature set and to see that they are running in the background.
* [Desktop Icons NG (DING)](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/)[^1] - I like to have my browser, links to my home folder and trash bin, and a temp folder available on my desktop.
* [Add to Desktop](https://extensions.gnome.org/extension/3240/add-to-desktop/)[^1] - Makes it a bit easier to add my browser to the desktop.
* [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)[^1] - I like to be able to visually see what apps are running without needing to open a full app search. I also don't exclusively use either my mouse or keyboard to do things, so being able to open my most commonly used apps and the app menu with a mouse is helpful.
* [Tiling Assistant](https://extensions.gnome.org/extension/3733/tiling-assistant/)[^2] - I mostly use this because I have a 43" display, so snap to a quarter of the screen is extremely helpful.
* [Wallpaper Slideshow](https://extensions.gnome.org/extension/6281/wallpaper-slideshow/) - This one wouldn't be a deal breaker if I couldn't get, but I do have a folder of desktop backgrounds I like to see.
* [Caffeine](https://extensions.gnome.org/extension/517/caffeine/) - I don't use this a lot, but when I do need it, it comes in clutch.

[^1]: Extensions I honestly believe should just be configs.
[^2]: I think this one would make sense as a config or out of the box feature, but I'm willing ot accept it as a lower priority where I am probably a bit of an outlier.

With all that set up and some minor configurations, along with a few other minor settings, I actually really like the experience of GNOME. Which puts me in a really awkward position of wanting to stick with this and wanting to find something else that I'm a lot more comfortable recommending to people who wouldn't want to spend all that time with initial configurations.

### Dev Tools
Similar to Mint, I did have to do some setup in a terminal for some developer tools, but it was fairly similar to what I did with Mint. Installing compilers was the same and [Zsh wasn't much different](https://fedoramagazine.org/set-zsh-fedora-system/), but [setting up Libsecret](https://discussion.fedoraproject.org/t/attention-git-credential-libsecret-for-storing-git-passwords-in-the-gnome-keyring-is-now-an-extra-package/18275) was a bit simpler and Podman was already configured to pull from Docker Hub (and Fedora Registries) out of the box.

<details>
    <summary>Expand to see setup for Zsh, Git, and Podman</summary>

```bash
# Install Zsh and set it as the default
sudo dnf install zsh
chsh -s $(which zsh)

# Install and configure Libsecret as Git's global credential manager
sudo dnf install git-credential-libsecret
git config --global credential.helper libsecret
```

</details>

Once that was done, I also had to configure Visual Studio Code to use ZSH when opening a terminal, which I've never had to do in Mint (or MacOS at work), but that wasn't too hard. Just had to update the `Terminal › Integrated › Default Profile: Linux` configuration in the VS Code settings to `zsh` and it started working as expected.

## Gaming
I'll keep this section short, because it is mostly the same as my experiences with Mint. I was getting that same error where the system package version of Steam wouldn't run correctly. This time, I decided to try the Steam Flatpak, which worked however, so I decided to stick with that for the remainder of the month.

I still didn't have any luck with VR, so at this point I'm assuming it's something to do with the fact that I have a Meta Quest 3 and there is some issue with that headset. I did look into ALVR again, but just didn't have the time and energy to deal with the setup.

## Misc Issues
Aside from the GNOME frustration, I did encounter a few small problems, but nothing thats really deal breaking.

I don't like that Fedora decides to install updates *while* restarting the way Windows does. That was something I was very accustomed to in Linux Mint, was being able to use my computer while updates were installed and then rebooting in my own time. That being said, it was still a faster and more reliable experience that I remember Windows being, so not that big a deal.

I also encountered some bugginess when reorganizign a lot of apps in the Show Apps view, but that was only while doing a lot of reorganizing at once and closing and re-opening it would fix it.

Lastly, I had some weird issues using PrusaSlicer where it wouldn't focus on the right thing. It seemed to improve on it's own over time, and I could generally fix it just by re-positioning the window.

[gnome-tweaks-min-max]: https://itsfoss.com/gnome-minimize-button/
