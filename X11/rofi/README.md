# Installation

```
sudo apt install rofi
```

# Configuration

By default there's no config file created, but you can dump the default configuration into a file

```
mkdir -p ~/.config/rofi
rofi -dump-config > ~/.config/rofi/config.rasi
```

Alternatively this repo contains a config file example

# PyWal

PyWal can create pretty nice theme for Rofi, just make sure you update `config.rasi`

```
# Dark theme.
theme: "~/.cache/wal/colors-rofi-dark";

# Light theme.
theme: "~/.cache/wal/colors-rofi-light";
```
