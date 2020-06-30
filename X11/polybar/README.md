# Polybar

A popular bar for window manager, though it dependency on Siji font is a annoying as it doesn't play nice with certain distribution e.g. ubuntu

## Config

If you follow the installation instruction, an example would be provided in `~/.config/polybar/config`. Alternatively just copy the file from this repo

## Dependencies

The following might needs to be installed first

```
sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2
```

## Installation

As it stands now, Polybar team [doesn't really support Debian](https://github.com/polybar/polybar/issues/1959). The repo README seems to say that it supports Ubuntu but alas I don't think this is true. Luckily on the same link you can find a few other people has took it upon themselves to create package Polybar for us, Ubuntu/Debian user. So what we need to do is just download the `.deb` file and install it. 

```
sudo dpkg -i <polybar.deb>
```

Note that you might need to install a few dependencies before you can successfully install it. Just read any error message that may pop up, it's pretty straight forward

Alternatively you can still [build from scratch](./manual-installation.md).

