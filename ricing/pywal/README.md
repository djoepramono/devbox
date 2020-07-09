# Pywal

Create color scheme on the fly. It doesn't actually override your default terminal setup

# Notes 
- You might already have python3 but make sure to install pip3
- `pip3 install pywal` install pywal in `~/.local/bin` which may not be in your path. So make sure you include it
- To trigger pywal during startup, adding the following line to the `~/.bashrc` is enough `cat ~/.cache/wal/sequences`
- Some apps actually reads from `~/.Xresources` and Pywal actually created this file albeit in different name. Make sure you copy it across. By default Ubuntu doesn't supply `~/.Xresources` 

# Themes
- You can load any existing theme by typing `pywal --theme <file_location>`
- Everytime you run `pywal`, there's actually a theme stored as json file in `~/.cache/wal/scheme`, feel free to store it somewhere else for later use
- If the theme is only partially loaded e.g. only in terminal but not somewhere else. Make sure you run `cat ~/.cache/wal/sequences` and copy any necessary file e.g. to .Xresources
