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

## AUR pkgs

```bash
yay -S visual-studio-code-bin
```

## Extra

### Install LazyVim

```bash
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
```

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
