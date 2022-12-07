# Paru

It's one of the more popular pacman wrapper that can also install AUR packages. 

## How to Install

You would need to clone the [git repo](https://github.com/Morganamilo/paru)
```
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si #this command also install paru into your system
```

## Troubleshooting

When openssl is update, it breaks Paru. But a simple rebuild (re-running `mkpkg -si`) soves it