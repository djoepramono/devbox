# X11 colors

## How color works

Basically X11 has a set of default colors which is then used by the various scripts/apps/programs

This colors (and other settings) are can be modified via `.Xresources` file most commonly stored in the home directory

## Implementing changes

You can create a new `.Xresources` with a suffix e.g. `~/.Xresources.urxvt`

Which then can be merged with `xrdb -merge ~/.Xresources.urxvt`

And then reload your app that uses Xresources for example `urxvt`. This will last until your xsession finish

For some inspiration and help with the color selection, visiting https://terminal.sexy might help

As for the fonts, you can type `fc-list` to grab the list of available fonts in X11. Getting the font name can be tricky.

## Some scripts/apps program that uses Xresources

### LS

typing `ls` in the terminal will print out folders and files in colors that are set by Xresources. To find out what color they are using you can type `echo $LS_COLORS` or alternatively `dircolors`

