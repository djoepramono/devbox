#!/bin/sh
set -euo pipefail

# Installing Neovim via Homebrew
brew install neovim/neovim/neovim

# Download Plug Vim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy .vimrc from repository
cp .vimrc ~/
ln -s ~/.vimrc ~/.config/nvim/init.vim

# Done, install the plugins from inside neovim with :PlugInstall
