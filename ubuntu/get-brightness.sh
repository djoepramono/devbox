#!/bin/bash

xrandr --verbose | awk '/Brightness/ { print $2; exit }'
