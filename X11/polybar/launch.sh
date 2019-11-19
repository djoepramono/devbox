#!/usr/bin/env bash

BAR_NAME="top"

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Get all monitors
if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload ${BAR_NAME} &
  done
  #for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
  #  MONITOR=$m polybar --reload example &
  #done
else
  polybar --reload ${BAR_NAME} &
fi

# Launch bar1 and bar2
# polybar top &
#polybar bar2 &

polybar ${BAR_NAME} &

echo "Bars launched..."
