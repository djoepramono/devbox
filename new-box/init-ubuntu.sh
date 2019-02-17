#!/bin/bash

# install jdk for intellij
sudo apt-get install openjdk-8-jdk

# sbt needs
export TERM=xterm-color

# some node js watch needs this
echo fs.inotify.max_user_watches=524288 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p

# Ubuntu clean and update
alias upgrade='sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean'
