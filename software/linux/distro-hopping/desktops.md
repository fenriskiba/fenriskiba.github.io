<!-- omit from toc -->
# Desktop Environments
!> **Important:** The current contents of this page are based on my 2025 attempt at distro hopping and will get updated as I further evaluate and work through the 2026 effort.

Before going into the experiences specific to each distribution, I wanted to quickly go through my impressions of the desktop environments that they use. These shape a lot of the experience and will create a lot of commonalities between some of the distributions.

**Table of Contents:**
- [Cinnamon](#cinnamon)
- [GNOME](#gnome)
  - [GNOME Opinionation Rant](#gnome-opinionation-rant)
  - [GNOME Customizations](#gnome-customizations)
- [KDE Plasma](#kde-plasma)
- [Cosmic](#cosmic)

## Cinnamon
I've been using Cinnamon for years and generally like the experience. It keeps things simple, provides a really solid suite of tools, and allows for quite a bit of customization. It does use a traditional "Windows-like" layout, but anyone who doesn't like it can easily change that (ex. Michael Horn made a [video about making Cinnamon look like GNOME](https://www.youtube.com/watch?v=Q_Uoe5H4ORs)). I think Cinnamon provides a great experience for less technical users migrating from Windows with minimal sacrifice for technical users who want to spend time ricing their system.

That being said, I don't think Cinnamon is exactly a perfect experience. They do lag behind on a lot of features and functionality. It took them way too long to implement touchpad gestures, still don't have support for HDR or VRR support, and the "still in development" Wayland support does prevent use of some newer tools like Waydroid. I don't think any of this is severe enough for the average consumer, but I don't think I can entirely ignore it either.

## GNOME
Overall, I really like the GNOME experience *after I've spent time customizing it*, but I find it frustrating that the customizations I feel the most need to apply to GNOME are things that every other desktop seems to consider a basic feature.

### GNOME Opinionation Rant
?> **Note:** I'm not going to claim to understand the full details of why the GNOME Foundation has made their decisions, so all of this is only speaking to my experience and the perception that it creates. I recognize that creates a risk of statements that aren't entirely fair to GNOME, and I am sorry about that. However, that's not an excuse to brush off these concerns as invalid or irrelevant, so I want to call them out all the same.

From watching some Linux Youtubers, it seems that my love/hate perspective of GNOME is a fairly average one. I really like how they try to keep configurations and the general experience simple, but there are some common features that they stubbornly won't implement; even as a simple toggle in the settings app (especially annoying when that toggle [already exists in the GNOME Tweaks apps][gnome-tweaks-min-max] that *the GNOME Foundation built*). I love the library of extensions to help customize the experience, but I find it ridiculous that [the official tool to manage them](https://flathub.org/apps/org.gnome.Extensions) only [supports enabling them rather than installing them](https://askubuntu.com/a/1532054), doesn't comes pre-installed on some distros, and that GNOME has a reputation of breaking the extensions anyway. I appreciate that they want to raise the bar for application quality, but I can't comprehend why they seem to think they can force their opinionation onto application developers (ex. App Indicators and app styling/theming).

It also really troubles me that a lot of these features are things that the GNOME developers could implement and just never use themselves. Being able to add icons to the desktop, minimize applications, and see them in a readily visible dock would help people switching to Linux feel less intimidated by the new experience. Instead, the GNOME developers have said "nope, I don't like having them, therefore no one should have them". I don't understand why GNOME developers are so against functionality whose existence shouldn't interfere with their flow or could easily be set to a simple toggle, but would enable other people to use their computers the way they want and help dispel the notion that Linux is too big of a jump from other operating systems.

I really want to like GNOME and the experience it provides, but they seem determined to act like their opinions are the only ones that matter. I understand that part of open source is that there is no obligation to build or support anything and that the project maintainers are well within their rights to focus solely on building what *they* want. However, whether they asked for it or not, they have gained a responsibility as one of the most popular desktop environments on Linux, and I don't think they are living up to it. They seem more than happy to use the influence that comes with that, but not to listen to many of the users that the influence comes from or implement functionality that make it less intimidating to people switching to Linux.

I appreciate how GNOME values quality, is clearly [trying to enable accessibility](https://fireborn.mataroa.blog/blog/i-want-to-love-linux-it-doesnt-love-me-back-post-1-built-for-control-but-not-for-people/) (even if they have stumbled along the way), and provides an extremely simple set of configurations with clear avenues for customization. However, so long as they refuse to step outside their bubble and support differing opinions (not just allow them to exist with extensions, but support them directly through the most commonly requested configurations and strategies to minimize the risk of breaking extensions), it'll only be a matter of time before COSMIC or some other desktop with the same values of accessibility and simplicity comes and takes their place and their influence. I hate feeling like I need to root for COSMIC to replace GNOME rather than just serving as another competitor, but that's where the GNOME Foundation's stubbornness has left me.

### GNOME Customizations
Since I'm not too fond of the out of the box experience with GNOME, when using it I do install GNOME Tweaks and a number of extensions. I used GNOME Tweaks to [enable the minimize and maximize buttons][gnome-tweaks-min-max] and installed the following extensions through the Extensions Manager app:

**Functionality that should be basic configs:**
* [AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/)
* [Desktop Icons NG (DING)](https://extensions.gnome.org/extension/2087/desktop-icons-ng-ding/)
* [Add to Desktop](https://extensions.gnome.org/extension/3240/add-to-desktop/)
* [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock/)
* [Tiling Assistant](https://extensions.gnome.org/extension/3733/tiling-assistant/)
  * The only part of this one I really think needs to be a config is the ability to snap to quarters of the screen. That's really helpful for larger displays, and not having it means that GNOME has fallen behind *MacOS* for window management tools.

**Added Functionality:**
* [Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
* [Vitals](https://extensions.gnome.org/extension/1460/vitals/)

**Aesthetic Improvements:** 
* [Wallpaper Slideshow](https://extensions.gnome.org/extension/6281/wallpaper-slideshow/)
* [Lock screen background](https://extensions.gnome.org/extension/1476/unlock-dialog-background/)
* [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)

With all that set up and some minor configurations, along with a few other minor settings, I actually really like the experience of GNOME. Which puts me in a really awkward position of wanting to stick with a distro using it and wanting to find something else that I'm a lot more comfortable recommending to people who wouldn't want to spend all that time with initial configurations.

[gnome-tweaks-min-max]: https://itsfoss.com/gnome-minimize-button/

## KDE Plasma
My general opinion of the KDE Plasma desktop experience is that it is... fine. I'm not a big fan of it overall because I find the settings to be hard to navigate, but once I've gotten through that and set up my displays and wallpapers and the like it's a perfectly good experience. Subjectively, I also am just not a big fan of the default icons and theme, but that's configurable so not a big deal.

Saying things are unintuitive doesn't help much without some specific examples though, so here we go:
* In KDE Discover, I find it strange that it has a settings page mixed into a sidebar that is otherwise almost exclusively app categories. Then, there is almost nothing on that page, because you have to go to an ellipses dropdown in the top-right (that's only on that page) to actually find most of the actual settings. Why not just put the setting on that page?
* Having separate settings pages for lock and login screens, that aren't anywhere near each other and that don't show up together when searching threw me through such a loop when trying to set a custom background for them.
* The Login Screen configs don't make any sense and use terminology that assumes you know the technical details of how KDE works.
  * To change aspect ratio settings to fix a Fedora bug, I had to just click "Apply Plasma Settings...", but I still don't really know the full scope of what does that means? What all does that do? There's no real info about that.
  * When setting a background for the login screen, it lets you do that fairly easily, but shows no sign that the config took at all. You only get confirmation that anything happened after logging out and seeing it.
* Despite being known for being super configurable, some things are randomly missing.
  * [Change your computers hostname](https://bugs.kde.org/show_bug.cgi?id=259285) (even GNOME has that one)
  * I couldn't find anything for "Leave numlock on". I could find some similar configs, but they either had weird effects or weren't quite the same.
    * In general, the fact that I had to turn numlock on several times, despite never turning it off, was a bit of a pain point in general.
  * It took over 15 years for them to [add a config to control drag and drop behavior](https://bugs.kde.org/show_bug.cgi?id=154804).
* ALL THE APPLY BUTTONS!!! Don't get me wrong, I'm not saying KDE should get rid of needing to take explicit action to apply something. I still have mixed feelings about the general move towards everything taking effect the moment you select it. However, there needs to be some way to press just one Apply button when changing a bunch of settings. Make it a Settings App-wide button or something.

I really like the goal the KDE team seems to have of making things as configurable as possible, while still being fairly simple out of the box, and enabling as many use cases as possible. I just think they need to rework how those configurations are organized so that it's easier to customize without needing to search the web to find the settings you're looking for. It's definitely something I feel comfortable recommending to anyone who doesn't mind spending time customizing their system, but not to anyone less technical.

## Cosmic
?> Coming Soon!