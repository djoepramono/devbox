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

## Docker

```
paru -S docker
systemctl start docker
sudo groupadd docker # create docker group, but it probably already exists
sudo usermod -aG docker ${USER} # add your user to the docker group
```

## VS Code

This editor cannot connect to marketplace, on the latest installation. They changed the url, so it's time to change it back

Change `/usr/lib/code/product.json`

```json
"extensionsGallery": {
    "serviceUrl": "https://marketplace.visualstudio.com/_apis/public/gallery",
    "cacheUrl": "https://vscode.blob.core.windows.net/gallery/index",
    "itemUrl": "https://marketplace.visualstudio.com/items"
}
```

## Java

First install the JDK manager. This will also install a JRE available at that time, e.g. JRE 16

```
paru -S jdk
```

After this you can install further JDK packages

```
paru -S jdk8-openjdk 8.u292-1
paru -S jdk16-openjdk
```

The new package should now be available to list, and switch to

```
archlinux-java status
archlinux-java set java-8-openjdk
java -version
```