# Polybar

A popular bar for window manager, though it dependency on Siji font is a annoying as it doesn't play nice with certain distribution e.g. ubuntu

## Config

If you follow the installation instruction, an example would be provided in `~/.config/polybar/config`. Alternatively just copy the file from this repo

## Installation

As it stands now, Polybar team [doesn't really support Debian](https://github.com/polybar/polybar/issues/1959). The repo README seems to say that it supports Ubuntu but alas I don't think this is true. Luckily on the same link you can find a few other people has took it upon themselves to create package Polybar for us, Ubuntu/Debian user. So what we need to do is just download the `.deb` file and install it. 

Alternatively you can find the package on [Launchpad](https://launchpad.net/ubuntu/+builds?build_text=polybar&build_state=all)

```
sudo dpkg -i <polybar.deb>
```

Note that you might need to install a few dependencies before you can successfully install it. Just read any error message that may pop up, it's pretty straight forward

Alternatively you can still [build from scratch](./manual-installation.md).

## Modules

It comes with plenty of module already, but if you need more you can have a look at [polybar-scripts](https://github.com/polybar/polybar-scripts/tree/master/polybar-scripts). Simply clone their repo, and create symbolic link to get them working

