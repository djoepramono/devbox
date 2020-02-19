#!/bin/bash

# Install dependencies
echo "Installing dependencies ..."
sudo apt install git gcc make xcb \
  libxcb-util1-dev libxcb-ewmh-dev libxcb-randr0-dev \
  libxcb-icccm4-dev libxcb-keysyms1-dev libxcb-xinerama0-dev \
  libasound2-dev libxcb-xtest0-dev \
  libxcb-shape0-dev \ 
  libxft-dev \
  libx11-xcb-dev

# Install three main repos for bspwm
echo "Cloning repositories ..."
cd ~/Programs
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
git clone https://github.com/baskerville/xdo

# Make and install
echo "Make and install ..."
cd ~/Programs/bspwm && make && sudo make install
cd ~/Programs/sxhkd && make && sudo make install
cd ~/Programs/xdo && make && sudo make install


