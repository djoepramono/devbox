#!/bin/bash

# Define the clock
clock() {
        DATETIME=$(date "+%a %b %d, %T")
        echo -n "$DATETIME"
}

# Print the clock

while true; do
  echo "%{c}%{F#FFFF00}%{B#000000} $(clock) %{F-}%{B-}"
  sleep 1
done
