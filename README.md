# Setup Note

## Install Packages

```bash
sudo pacman -S zsh ghostty
sudo pacman -S eza zoxide fzf ripgrep
sudo pacman -S flatpak
sudo pacman -S fcitx5-im
sudo pacman -S fcitx5-rime
sudo pacman -S neovim
sudo pacman -S clash-verge-rev  # must have archlinuxcn
sudo pacman -S yazi ffmpeg 7zip jq poppler fd resvg imagemagick
sudo pacman -S git
sudo pacman -S vivaldi
sudo pacman -S stow
sudo pacman -S ttf-jetbrains-mono-nerd
sudo pacman -S starship
sudo pacman -S fnm
sudo pacman -S base-devel
sudo pacman -S zed
sudo pacman -S bat
sudo pacman -S podman podman-compose
sudo pacman -S dust bottom
```

## Add tsinghua archlinuxcn source

- [https://mirrors.tuna.tsinghua.edu.cn/help/archlinuxcn/](tsinghua archlinuxcn)

### Step 1: Edit conf file

File Path: `/etc/pacman.conf`

Add content from bottom:

```plain
[archlinuxcn]
Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
```

### Step 2: Run cmd

After that, run this command:

`pacman -Sy archlinuxcn-keyring`

## Flatpak pkgs

```bash
flatpak install flathub com.tencent.WeChat
```

`````bash
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install com.freerdp.FreeRDP
```

## AUR pkgs

```bash
yay -S visual-studio-code-bin
yay -S winboat-bin
yay -S docker docker-compose
yay -S wps-office
```

## Extra

### Docker Setup

````bash
sudo systemctl start docker.service
sudo systemctl enable docker.service

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

### Install LazyVim

```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
`````

### Setup ATK mouse

- [https://www.reddit.com/r/linux_gaming/comments/1feizmm/atk_hub_not_working/?rdt=53952](Tutorial)

```bash
sudo pacman -S usbutils
```

```bash
lsusb | rg mouse

# ======== Output ========
# Bus 005 Device 003: ID 373b:11d9 Compx Wireless mouse 8k dongle-L
# ID is : 373b
```

```bash
sudo nvim /etc/udev/rules.d/50-usb-atk.rules

# ======== Content ========
# Format is : KERNEL=="hidraw*", ATTRS{idVendor}=="<idVendor>", MODE="0666"
# So in my case is: KERNEL=="hidraw*", ATTRS{idVendor}=="373b", MODE="0666"
```

```bash
sudo usermod -a -G input naqin
# Format: usermod -a -G input <your username>
```

### Setup rime-ice

```bash
cd ~/.local/share/fcitx5

git clone https://github.com/iDvel/rime-ice.git Rime --depth 1

mv rime rime.bak

mv Rime rime
```
