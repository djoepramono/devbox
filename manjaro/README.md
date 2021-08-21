# Manjaro / Arch

## Package Manager

`pacman` is the built in package manager, but it's better to install a wrapper script that can search AUR packages as well. For this there are 2 options `yay` and `paru`.

I decided to use `paru` because it's newer out of the two and it's still maintained.

To install, just go to its [github](https://github.com/Morganamilo/paru)

```
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

After that you can start to install packages

```
paru -S neovim
paru -S vscode
```