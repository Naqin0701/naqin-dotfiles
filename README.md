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
