# Disclaimer

This repository contains necessary stuffs to buid my personal development box

- IDE

## Vim / Neovim


### Install plugin manager

I use this [vim-plug](https://github.com/junegunn/vim-plug) as my package manager.
For the latest and greates instruction, please go there. For now though

### Copy config file

For now just copy it over (vim user) and create a symbolic link (neovim).
Make sure that the folder exists.

```
cp config/.vimrc ~/
ln -s ~/.vimrc ~/.config/nvim/init.vim
```

