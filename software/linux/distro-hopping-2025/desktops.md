# Desktop Environments
## Cinnamon

## GNOME
### GNOME Opinionation Rant
?> **Note:** A lot of this isn't super relevant to my experience with Fedora specifically, and while I do think Fedora could fix these problems the way Ubuntu has, it shouldn't necessarily be their responsibility to do so. That being said, it does play into how comfortably I can recommend Fedora to others, since I think these problems do impact the average user, and less technical users are going to have a hard time adapting to and living with the decisions of the GNOME Foundation and I think it's important to understand and address the root cause of those problems.  
I'm not going to claim to understand the full details and politics of the GNOME Foundation, so all of this is only speaking to my experience and the perception that it creates. I recognize that creates a risk of statements that aren't entirely fair to GNOME, and I am sorry about that. However, that's not an excuse to brush off these concerns as invalid or irrelevant, so I want to call them out all the same.

From watching some Linux Youtubers, it seems that I'm not exactly alone in my love/hate relationship with GNOME. I really like how they try to keep configurations and the general experience simple, but there are some common features that they stubbornly won't implement; even as a simple toggle in the settings app (especially annoying when that toggle [already exists in the GNOME Tweaks apps][gnome-tweaks-min-max] that *the GNOME Foundation built*). I love the library of extensions to help customize the experience, but I find it ridiculous that [the official tool to manage them](https://flathub.org/apps/org.gnome.Extensions) only [supports enabling them rather than installing them](https://askubuntu.com/a/1532054), doesn't comes pre-installed, and that GNOME has a reputation of breaking the extensions anyway. I appreciate that they want to raise the bar for application quality, but I can't comprehend why they seem to think they can force their opinionation onto application developers (ex. App Indicators and app styling/theming).

It also really troubles me that a lot of these features are things that the GNOME developers could implement and just never use themselves. Being able to add icons to the desktop, minimize applications, and see them in a readily visible dock would help people switching to Linux feel less intimidated by the new experience. Instead, the GNOME developers have said "nope, I don't like having them, therefore no one should have them". I don't understand why GNOME developers are so against functionality whose existence shouldn't interfere with their flow or could easily be set to a simple toggle, but would enable other people to use their computers the way they want and help dispel the notion that Linux is too big of a jump from other operating systems.

I really want to like GNOME and the experience it provides, but they seem determined to act like their opinions are the only ones that matter. I understand that part of open source is that there is no obligation to build or support anything and that the project maintainers are well within their rights to focus solely on building what *they* want. However, whether they asked for it or not, they have gained a responsibility as one of the most popular desktop environments on Linux, and I don't think they are living up to it. They seem more than happy to use the influence that comes with that, but not to listen to many of the users that the influence comes from or implement functionality that make it less intimidating to people switching to Linux.

I appreciate how GNOME values quality, is clearly [trying to enable accessibility](https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/) (even if they have stumbled along the way), and provides an extremely simple set of configurations with clear avenues for customization. However, so long as they refuse to step outside their bubble and support differing opinions (not just allow them to exist with extensions, but support them directly through the most commonly requested configurations and strategies to minimize the risk of breaking extensions), it'll only be a matter of time before COSMIC or some other desktop with the same values of accessibility and simplicity comes and takes their place and their influence. I hate feeling like I need to root for COSMIC to replace GNOME rather than just serving as another competitor, but that's where the GNOME Foundation's stubbornness has left me.

### GNOME Customizations
Since I'm not too fond of the out of the box experience with GNOME, I did install GNOME Tweaks and installed a number of extensions. I used GNOME Tweaks to [enable the minimize and maximize buttons][gnome-tweaks-min-max] and installed the following extensions through the Extensions Manager app:

**Should be configs:**
* [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/)
* [Desktop Icons NG (DING)](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/)
* [Add to Desktop](https://extensions.gnome.org/extension/3240/add-to-desktop/)
* [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
* [Tiling Assistant](https://extensions.gnome.org/extension/3733/tiling-assistant/)
  * The only part of this one I really think needs to be a config is the ability to snap to quarters of the screen. That's really helpful for larger displays, and not having it means that GNOME is **behind *MacOS* for window management tools.**

**Added Functionality:**
* [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
* [Vitals](https://extensions.gnome.org/extension/1460/vitals/)

**Aesthetic Improvements:** 
* [Wallpaper Slideshow](https://extensions.gnome.org/extension/6281/wallpaper-slideshow/)
* [Lock screen background](https://extensions.gnome.org/extension/1476/unlock-dialog-background/)
* [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)

With all that set up and some minor configurations, along with a few other minor settings, I actually really like the experience of GNOME. Which puts me in a really awkward position of wanting to stick with this and wanting to find something else that I'm a lot more comfortable recommending to people who wouldn't want to spend all that time with initial configurations.

## KDE Plasma