# How to install new fonts

It's basically copy pasting the `.ttf` or `.otf` files to either of this folder
- `/usr/local/share/fonts/otf` for everyone
- `~/.local/share/fonts/otf` for one user

Make sure that you use the appropriate folder e.g. `otf`

A sample copy paste command is like follows

```bash
> sudo cp ~/Downloads/CodeNewRoman/Code\ New\ Roman\ Nerd\ Font\ Complete\ Mono.otf /usr/local/share/fonts/otf/CodeNewRoman/CodeNewRoman-mono.otf
> fc-cache
```

You can then query the font family name, i.e. the name that you want to include in VSCode settings / terminal like so

```bash
fc-query /usr/local/share/fonts/otf/CodeNewRoman/CodeNewRoman-mono.otf
```

You can also check the default font app, e.g. Gnome's Font

# Where to look for fonts

- https://www.nerdfonts.com/
- https://wiki.archlinux.org/title/Fonts#Font_packages
