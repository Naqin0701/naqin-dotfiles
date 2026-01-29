# Naqin Dotfiles

## Install Packages

```bash
sudo pacman -S --needed zsh ghostty eza zoxide fzf ripgrep flatpak fcitx5-im fcitx5-rime neovim yazi ffmpeg 7zip jq poppler fd resvg imagemagick git base-devel vivaldi stow starship zed bat dust bottom fastfetch obsidian tabiew dysk github-cli usbutils fnm
```

## Setup archlinuxcn source

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

`sudo pacman -Sy archlinuxcn-keyring`

### Install Clash

```bash
sudo pacman -S clash-verge-rev
```

## Install Flatpak Packages

```bash
flatpak install flathub com.tencent.WeChat
flatpak install flathub com.tencent.wemeet
```

## Install aur Packages

```bash
yay -S --needed visual-studio-code-bin nutstore claude-code opencode-bin cc-switch-bin
```

## Install fonts

```bash
sudo pacman -S ttf-jetbrains-mono-nerd
```

## Setup ATK mouse

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

## Setup rime-ice

```bash
cd ~/.local/share/fcitx5

git clone https://github.com/iDvel/rime-ice.git Rime --depth 1

mv rime rime.bak

mv Rime rime
```

## Setup Claude Code

Edit `~/.claude.json`

Add `"hasCompletedOnboarding": true,`
