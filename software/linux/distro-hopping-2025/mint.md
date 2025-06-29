# Linux Mint
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

I started by getting a baseline on the new hardware with [Linux Mint](https://linuxmint.com/). This also gave me an opportunity to take a look at Mint again through a more critical lense.

In general, I like Linux Mint as an operating system; it provides a good balance of simplicity and configuration, a comprehensive suite of tools out-of-the-box, and solid support through the Mint Forums (plus the Ubuntu base means that sites like AskUbuntu are also usually helpful). I generally don't have issues with app compatibility in Mint, with the only real exception being Davinci Resolve (which I think may have been as much about hardware support as software).

At the end of the day, there is good reason why I've been fairly happy with Linux Mint for over a decade, but this latest review of it has definitely revealed a few issues I may have just gotten used to. I can't say any of the following issues are individually deal breakers, but together they do help justify checking out other distributions.

## Kernel Issues
Despite this being an upgrade from the previous version of Mint to the latest (21.3 Edge to 22), I immediately ran into issues with it being on an older version of the Linux Kernel. Mint 22 ships with the 6.8 LTS version of the kernel, which unfortunately doesn't have drivers for my motherboards network chip.

Luckily, Mint does have [a simple graphical tool to install different version of the kernel](https://www.fosslinux.com/138008/how-to-install-and-try-different-linux-kernels-in-linux-mint.htm), so, using an ethernet-to-USB adapter, I was able to connect to the internet and update to a kernel that does support my hardware without much trouble.

I understand the Mint team likely made that decision to prioritize stability, but unfortunately, that only matters if the system works in the first place. This is also the third time I've encountered these kinds of issues with Mint being on an older kernel since Mint used to have [issues with Framework laptops](https://forums.linuxmint.com/viewtopic.php?t=362759) and [was missing 8bitdo controller driver headers](https://gist.github.com/ammuench/0dcf14faf4e3b000020992612a2711e2).

Unless the Mint team commits to supporting a version with the HWE Kernel installed by default, it's becoming harder and harder for me to reliably recommend Linux Mint. Even something as like having a separate Edge version like they did with Mint 21 would resolve so much of this problem. It's not quite a disqualified since there is a relatively simple fix, but I don't consider being able to upgrade to it more easily an acceptable solution when the network drivers required to do so can be what's missing form the LTS Kernel.

## Mint Setup
Once I got through the kernel issues, setup was pretty easy since it's what I'm used to setting up. It was nice not needing to deal with [setting up three monitors](https://forums.linuxmint.com/viewtopic.php?t=418626), but even if I had, I found [a script I could modify and run at startup](https://github.com/linuxmint/cinnamon-screensaver/issues/210) that would reset that for me automatically anyway.

Outside of some minor visual changes (I like the way Mint looked when I started using it more than its new default look), I didn't really have much to set up my environment. Almost all of the apps I use are either available in the Software Manager or have a simple `.deb` installer that I can download. Connecting to my NAS was as simple as going to the network tab in the file explorer and signing in.

All that I really need to do any work for are some development tools (which I'm okay with a small amount of setup for). Podman is available in the Software Manager and I can follow the official install instructions for [Go](https://go.dev/doc/install) and [NVM](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating). I did have to do a bit of work to [set up Zsh as my default shell](https://techviewleo.com/install-and-use-zsh-with-oh-my-zsh-on-linux-mint/) so that I can use [Oh My Zsh](https://ohmyz.sh/), [install Libsecret for Git credential management](https://www.softwaredeveloper.blog/git-credential-storage-libsecret), and [configure Podman to use Docker Hub by default](https://www.baeldung.com/ops/podman-pull-image-docker-hub#pulling-images-without-fully-qualified-names), none of which is particularly difficult as far as developer environment setup goes.

<details>
    <summary>Expand to see setup for Zsh, Git, and Podman</summary>

```bash
# Do some updates and installs just in case (mostly unnecessary though)
sudo apt update
sudo apt install wget curl git -y

# Install Zsh and set it as the default
sudo apt install zsh -y
sudo chsh -s /usr/bin/zsh $USER

# Restart the computer so that the change will take effect (could probably just log out and in again, but whatever)

# Install Libsecret
sudo apt-get install libsecret-1-0 libsecret-1-dev

# Build Libsecret
cd /usr/share/doc/git/contrib/credential/libsecret
sudo make

# Set Git's global config to use Libsecret to manage credentials
git config --global credential.helper /usr/share/doc/git/contrib/credential/libsecret/git-credential-libsecret

# Open Podman Config
sudo nano /etc/containers/registries.conf
# In Nano, add "unqualified-search-registries = ["docker.io"]" to the config
```

</details>

## Remote Gaming
### Steam Link
I've never really had issues running any of the games I want to play on Mint, but as stated in the [My Hardware Setup](/software/linux/distro-hopping-2025/?id=my-hardware-setup) section of the intro page, I wanted to try remote gaming for couch play in my living room.

I started trying with Steam Link since I do have a couple of the official Steam Link client devices that Valve used to sell. At first, everything went well with the Steam Link being able to identify the PC no problem and the built in network test came back positive.

Unfortunately, that's where the positive experiences ended. When I actually connected to the computer, the screen would just stay black with a loading icon. I could sometimes heard the sound from Steam Big Screen mode opening up and if I went to the computer it was open, but the Steam Link couldn't see it or control it. 

I later confirmed that this was indeed a Steam on Linux issue and not a Linux Mint issue, so hopefully the Steam Link is something Valve will revive for the Linux desktop in the future.

### Sunshine/Moonlight
After Steam Link, I decided to try running [Sunshine](https://github.com/LizardByte/Sunshine) to connect from [Moonlight](https://moonlight-stream.org/) since it is designed to be low-latency and also gives me a solution to remotely connect to the desktop from my laptop. It's also pretty easy to set up in the living room, since there is a Google TV app.

Setting up the apps and connecting was exceptionally easy, so this solution may be worth keeping in mind if I decide to switch from my current setup to using a thin client for my home office, but there were a few issues keeping it from helping with my living room setup.

I did encounter some bitrate issues causing me to lower the resolution to 1080p, which is a bit disappointing for couch gaming on my 4k TV. There may be some ways to tune the bitrate with fewer compromises, but I didn't really bother figuring that out because I ran into a bit more of a deal breaker. Unfortunately, due to no fault of Linux Mint or Moonlight/Sunshine I can't really use this for couch gaming because my TV doesn't support [2.4Ghz wireless controllers](https://www.reddit.com/r/AndroidTV/comments/11ye35n/problem_connecting_8bitdo_ultimate_24g_controller/).

I could always use a thin client PC to connect with Moonlight, but at that point I'd rather just get a Steam Deck (or similar) and play games directly on that device for my couch gaming. If I can't get the Steam Link working on the next distro, I'll look into other options, but may need to fall back to the Steam Deck idea.

## Misc Issues
There were also a few smaller issues that I encountered while re-evaluating Linux Mint. Nothing too severe, and it's hard to tell what the root cause of these issues were so it is possible they were not Mints fault. Because of that, I will be keeping an eye on it as I move through more distros.

The first thing worth calling out are some issues opening Steam after my issues with Steam Link. For some reason, when I would try to open Steam, it would repeatedly fail to open the UI. I spent some time trying reinstalling Steam and updating some configurations in the `.desktop` file based on some [info I found in the Mint Forums](https://forums.linuxmint.com/viewtopic.php?t=400351), but without any real luck. I was able to find a few workaround options to get Steam running (opening through the Mint Software Manager, right clicking on the menu entry and opening to library, or deleting the `.desktop` file and bringing back the "Install Steam" icon that the Steam installer initially creates).  
Not sure if this was caused by Steam Link or if I just happened to noticed it after that. I do also believe this is related to using the `.deb` version of Steam though, because I encountered similar problems with system package versions of Steam on other distros, but not on the Flatpak version.

I also encountered some issues with system crashing. Twice, when I went to my computer, it wouldn't respond to anything. I could see the prompt to put in a password, but the background was missing and it wouldn't respond to any input. I had to hard restart the computer and then everything seemed to work fine. It did only happen twice, and I have a theory that it's something to do with the Steam issues I encountered however, so I'm not sure if this is something I can attribute to Mint or to Valve.

The last issue I encountered wasn't so much an error as much as functionality Mint just doesn't support. I decided to try connecting my Meta Quest 3 to Steam VR, both through Steam Link VR and a wired USB-C connection. Not much to say other than that it didn't really work. Hard to blame this on Mint though, since I had the same problem on other distros. Mint may still have a part in it from what I've read about it not supporting DRM leasing, but I do believe that the Meta Quest 3 may have more to do with it.