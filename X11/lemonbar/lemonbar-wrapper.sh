#!/bin/bash

# The one that pipes output to lemonbar should end with & which means run this in the background
# Otherwise it will keep running in the foreground
${HOME}/.config/bspwm/lemonbar/lemonbar.sh | lemonbar -p & 

