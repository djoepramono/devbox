# Config location
`~/.config/bspwm`

# Key maps

It uses external program called `sxhksd`, which is saved in `~/.config/sxhkd`

The config file are very sensitive, make sure you don't put a comment in between shorcut and the actual command

# Splitting window

By default, it's using Fibonacci splitting, which basically splits the current node vertically/horizontally in automatic fashion. 

If you want to have control on the splitting direction, use `--presel-dir` or by default `ctrl super {h,j,k,l}`

# Display Manager

You probably are using a display manager like lightdm or gdm (from Gnome). 

If you use GDM3, you need to create the `bspwm.desktop` on `/usr/share/xsessions`. This file normally comes with bspwm installation, but just in case you can also use the one provided

# Reference

[Changelog](https://madnight.github.io/bspwm/CHANGELOG/) a bit outdated though
