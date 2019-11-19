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

- clone from https://github.com/polybar/polybar
- follow the instruction i.e. run `build.sh`
- answer yes to everything

after that you need to install Siji font, otherwise you will get an error while trying to run polybar with the sample config

- clone from https://github.com/stark/siji
- follow the instruction i.e. run `./install.sh -d ~/.fonts`
- reload font cache `sudo fc-cache -f -v`
- check if Siji installed `xlsfonts | grep -i siji` and also `fc-list | grep -i siji`. *BOTH* should exists and not the case-sensitiveness
- if not then you can try the gotchas or give up and install the `ttf` version from [here](https://github.com/fauno/siji/blob/master/ttf/siji.ttf)
- a copy of the `ttf` version is also as part of this repo just in case

## Siji Gotchas

### Outdated format
The install script creates `.pcf` font which is arguably outdated. `ttf` is the new way to go and ubuntu can load `ttf` with no issue

### Confusion on the name
In the Siji repo, there's `bdf` and `pcf` format, you can actually grab the font directly instead of building it from source. These fonts are named Siji.
*BUT* if you build from source, the name is Wuncon Siji

### You can only install one format
Please only install `bdf`, `pcf` or `ttf` version

### Font Awesome alternative does not really work
At least for me ... I have tried `sudo apt install fonts-font-awesome` and reload the cache. The font is installed fine but polybar still error out

### Do not change the default font configuration
I managed to get the `ttf` version working so there's no need to change anything on `/etc/fonts/conf.avail`. Eventhough there are some instruction to remove `70-no-bitmaps.conf`

### Do not worry about changing xinitrc
If you are using ubuntu, this is not needed as it's probably already loaded somewhere. Otherwise you can create `~/.xinitrc` file and put the following lines

```
xset +fp /home/joe/.fonts
xset fp rehash
```
