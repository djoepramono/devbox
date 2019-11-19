# TMUX

Terminal multiplexer, split your terminal yadda yadda

For my use case however it's to mimic what Termite can do by default. 
And that is searching the scroll back buffer

With this now doesn't matter which terminal emulator I use, scrollback
is no longer a problem

## Installation

```
sudo apt install tmux
```

## Config

There is none by default, you can generate it via

```
tmux show -g | sed 's/^/set -g /' > ~/.tmux.conf
```

Note that you need to do the above inside tmux session 
which can be started by typing `tmux` in your terminal

Alternatively just copy the provided `.tmux.conf`, it has extra configs for vim user.

## Quick starter guide

| Description | Keybinding |
|---|---|
| Go to tmux mode | `ctrl``b` |
| Go to copy mode (by default this is emacs) | `ctrl``b``[`|
| Split horizontally | `ctrl``b```"` |
| Split vertically | `ctrl``b``%` |
| New window | `ctrl``b``c` |
| Find windows | `ctrl``b``f` |

To exit each mode just press escape or `q`

In tmux mode you can also type `:list-keys` to list the keys available

## VI Mode

### Selecting text
By default it runs on emacs mode, but you can set it to run vi mode by
adding the following config to the `.tmux.conf`

```
set-window-option -g mode-keys vi
bind-key -T copy-mode-vi 'v' send -X begin-selection
bind-key -T copy-mode-vi 'y' send -X copy-selection-and-cancel
```

### Color scheme
Sometimes the color scheme might break and this might result in vi not having any syntax highlighting or simply defaults to the original color

This can be mitigated by forcing tmux to run on 256 color via `tmux -2`, which is roughly translated as `TERM=xterm-256color tmux`
Alternatively *outside* tmux, your $TERM needs to be set to mode that supports 256 color e.g. `xterm-256color` and not `xterm-color`. This may vary from OS to OS
