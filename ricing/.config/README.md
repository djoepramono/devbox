# Ricing

## GTK
Depending on your application you might have gtk-2.0, gtk-3.0, and/or gtk-4.0 installed. I have 3 of them on my ubuntu

|File|Location|Description|
|---|---|---|
|config| `~/.config/gtk-3.0/gtk.css`|This file might need to be created|

You will find `gtk.css` in various themes e.g. `/usr/share/themes`, but the one to edit is the one in your home directory

Most GNOME application seems to use this.

# Terminals

## Termite
PROS: light-weight, supports transparency through compton
CONS: padding needs to be done via GTK.css

## URXVT
PROS: light-weight, support padding, uses Xdefaults or XResources
CONS: doesn't support true color, which means less color
