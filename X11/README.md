# How XResources are loaded

Normally it will load `~/.xinitrc`, but in Ubuntu that file is actually ignored.

Ubuntu managed its config in `/etc/X11` folder. In my case `/etc/X11/xinit/xinitrc` loads `/etc/X11/xsession` which controls how Xresources files are loaded.
In this case `.Xresources` in the user home folder and `/etc/X11/Xresources` are loaded.

# Device changes
Sometimes you might want to detect monitor changes, this can be done via `udev`

Set `udev` rules in `/etc/udev/rules.d`

```
SUBSYSTEM=="drm", ACTION=="change", ENV{DISPLAY}=":0", ENV{XAUTHORITY}="/home/joe/.Xauthority", RUN+="/usr/bin/xrandr-custom-detect"
```

After that reload the udev
```
sudo udevadm control --reload
```
