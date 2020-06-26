# Alacritty

Written in Rust

## Upsides
- Fast and it uses GPU for rendering

## Downsides
- no scrollback buffer search, means you can search the screen

## TMUX
To negate the downsides, we are using TMUX which is a terminal multiplexer which basically doing tabbing, splitting, scrolling in 1 terminal instance. `alacritty.yml` in this folder contains several keybindings and start TMUX by default in an interactive shell.
