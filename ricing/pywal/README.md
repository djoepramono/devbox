# Pywal

Create color scheme on the fly. It doesn't actually override your default terminal setup

# Notes 
- You might already have python3 buy make sure to install pip3
- `pip3 install pywal` install pywal in `~/.local/bin` which may not be in your path. So make sure you include it
- To trigger pywal during startup, adding the following line to the `~/.bashrc` is enough `cat ~/.cache/wal/sequences`

# Themes
- You can load any existing theme by typing `pywal --theme <file_location>`
- Everytime you run `pywal`, there's actually a theme stored as json file in `~/.cache/wal/scheme`, feel free to store it somewhere else for later use
