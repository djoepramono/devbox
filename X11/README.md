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
