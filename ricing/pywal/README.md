# Pywal

Create color scheme on the fly. It doesn't actually override your default terminal setup

# Quick Setup

```
yay pywal-git

wal -i ~/Pictures/Wallpapers/paramount.webp -b '#1e2830'
```

# Notes 
- To trigger pywal during startup, adding the following line to the `~/.bashrc` is enough `cat ~/.cache/wal/sequences`

# Themes
- You can load any existing theme by typing `pywal --theme <file_location>`
- Everytime you run `pywal`, there's actually a theme stored as json file in `~/.cache/wal/scheme`, feel free to store it somewhere else for later use
- If the theme is only partially loaded e.g. only in terminal but not somewhere else. Make sure you run `cat ~/.cache/wal/sequences` and copy any necessary file e.g. to .Xresources

# Which color are important

`color1` is used for comments, so any color closer to the background is good
`color2` is used for markdown heading and strings in VSCode Pywal
`color3` is used to show modified files and symbols in VSCode Pywal
