# Config location
The main config is actually just a shell script located in `~/.config/bspwm`

It uses external program called `sxhksd`, which is saved in `~/.config/sxhkd`

The config file are very sensitive, make sure you don't put a comment in between shorcut and the actual command

# Requirements

I configured this WM to work with
- lemonbar
- compton

So it's better to have them installed

# Splitting window

By default, it's using Fibonacci splitting, which basically splits the current node vertically/horizontally in automatic fashion. 

If you want to have control on the splitting direction, use `--presel-dir` or by default `ctrl super {h,j,k,l}`

# Display Manager

You probably are using a display manager like lightdm or gdm (from Gnome). 

If you use GDM3, you need to create the `bspwm.desktop` on `/usr/share/xsessions`. This file normally comes with bspwm installation, but just in case you can also use the one provided

# Top Bar

I'm using lemonbar and while it's actually straight forward to use Lemonbar by default, it's not as straightforward to use it with bspwm

There are examples on the bspwm repo and basically there are 4 main files
- panel: this is the entry point
- panel_bar: this file was probably meant to be executable on the global level, I change the reference to this file using relative path instead
- panel_colors:  this file was meant to be sourced in another script e.g. panel_bar, I change the reference to this file using relative path instead
- profile: this file was probably meant to be appended to `/etc/profile`, but for simplicity I just move the content to `panel`

To run the lemonbar you can include this in bspwmrc

```
./panel
```

Except that sometimes it doesn't run on startup. It will run if you call manually from the command line. Currently it's not known why

# Shortcuts

Keyboard shortcuts are handled by separate command `sxhkd`. Copy the `sxhkdrc` to `~/.config/sxhkd/`

For reference on all of the keysym (keyboard keys) that can be used as a shortcut, you can refer [here](http://wiki.linuxquestions.org/wiki/List_of_keysyms)

# Reference

[Changelog](https://madnight.github.io/bspwm/CHANGELOG/) a bit outdated though
