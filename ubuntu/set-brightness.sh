#!/bin/bash

# Alternatively install `xbacklight`

if [ -z "$1" ]
  then
    echo "Please input brightness value between 0.1 and 1"
  else
    if [ $(echo "$1 > 0" | bc) -eq 1  ] && [ $(echo "$1 <= 1" | bc) -eq 1 ]
    then
      xrandr --output eDP-1 --brightness $1
    else
      echo "Please input brightness value between 0.1 and 1"
    fi
fi

