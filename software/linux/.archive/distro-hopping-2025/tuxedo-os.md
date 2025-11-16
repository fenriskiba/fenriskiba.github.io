# Tuxedo OS
!> **Important:** The exact content and phrasing of the Linux Distro Hopping docs are still pending. After I have finished using each distro and creating an initial write up, I will be doing a final pass of the whole series of pages and make any final adjustments.

Overall, Tuxedo OS was a much better KDE experience than Fedora KDE was, and will probably be the distro I recommend to anyone who I think KDE would be a good experience for.

It wasn't a perfect experience, there were some smaller bugs and I still maintain that [KDE isn't intuitive to me](/software/linux/distro-hopping-2025/fedora-kde?id=kde-experience), but there wasn't anything I would consider a deal-breaker. Once I was done dealing with the configurations and had everything set up, it was a perfectly fine experience.

## Tuxedo Setup
Installing Tuxedo did require disabling secure boot, which was rather annoying since I don't remember seeing any warnings about that when downloading the ISO, but it's easy enough for someone technical enough to navigate KDE to do. They also provide [a way to re-enable it after installation](https://www.tuxedocomputers.com/en/What-you-always-wanted-to-know-about-Secure-Boot.tuxedo), so I don't think it's that big a deal.

Once I was able to boot into the installation USB, I did experience a crash after I selected the windowing server I wanted to use (I decided to stick with X11 since that is the default), but the classic "turn it off an on again" worked, so hopefully that was just a one-off.  
Aside from that, the installation process went fairly smooth without any issues to note.

Once I was into the system, I was able to confirm that a lot of the bugs I encountered in Fedora KDE (weird resolution issue, Discover bugs, etc.) were **not** KDE's fault. Aside from some random `.deb` files (most notably Steam) not displaying in Discover, my whole setup went perfectly normally. I still had some trouble remembering what all I needed to do in the menus (re-figuring out the login vs lock setting was actually helpful writing the Fedora KDE page), but nothing was particularly difficult to set up (just unintuitive). I was also able to just use the same [developer setup as I had in Mint](/software/linux/distro-hopping-2025/mint?id=mint-setup), so that was fairly quick and easy.

There were also a lot of pre-installed apps that I didn't really need and would probably spend some time uninstalling if I were staying on Tuxedo long-term. Most of it seemed fine like card games and stuff that you'd find even on older, less bloated Windows systems, but Nextcloud Desktop was an odd inclusion to have pre-installed. I don't think it was necessarily a problem, but anyone who considers any unnecessary pre-installed apps to be bloat would probably be rather unhappy about it.

## Lock Screen Issues
The only real issues I encountered with Tuxedo were relate to the lock screen. For some reason I couldn't get it to consistently focus on the password textbox when waking up the display, but that wasn't really a problem since I could still just click on it to get in.

Aside from that, I did encounter some issues where the login screen wouldn't display correctly if certain USB devices got plugged in before waking up the display. It would still let me log in no problem, but it would look like none of my keyboard inputs were being recognized until I actually hit "Enter" to log in. For most people, it probably wouldn't be too big a deal (just wait to plug in your USB till after you log in), but for me it was a bit more of an issue since switching between my desktop and laptop with my KVM switch would trigger it.  
Still, not a big deal since it didn't actually stop me from logging in, but not a great experience either.