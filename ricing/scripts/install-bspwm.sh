#!/bin/bash

# Install dependencies
sudo apt-get install git \
                      xcb \
                      libxcb-util0-dev \
                      libxcb-ewmh-dev \
                      libxcb-randr0-dev \
                      libxcb-icccm4-dev \
                      libxcb-keysyms1-dev \
                      libxcb-xinerama0-dev \
                      libasound2-dev \
                      gcc \
                      make \
                      libxcb-xtest0-dev \
                      libxft-dev \
                      libx11-xcb-dev

# Cloning necessary code to ~/Programs

git clone https://github.com/baskerville/bspwm.git ~/Programs/bspwm
git clone https://github.com/baskerville/sxhkd.git ~/Programs/sxhkd
git clone https://github.com/baskerville/sutils.git ~/Programs/sutils
git clone https://github.com/baskerville/xtitle.git ~/Programs/xtitle
git clone https://github.com/baskerville/xdo.git ~/Programs/xdo

# Install

cd ~/Programs/bspwm && make && sudo make install
cd ~/Programs/sxhkd && make && sudo make install
cd ~/Programs/sutils && make && sudo make install
cd ~/Programs/xtitle && make && sudo make install
cd ~/Programs/xdo && make && sudo make install

# Add Lemon bar
