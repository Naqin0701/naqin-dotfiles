# Note for customization Hyprland from Scratch

## My Dotfiles

```plain
.
├── .zshrc -> config/zsh/.zshrc
├── config
│   ├── .config
│   │   └── hypr
│   │       ├── hyprland.conf
│   │       └── hyprpaper.conf
│   ├── bash
│   └── zsh
│       └── .zshrc
└── note.md
```

## How to stow

### for bash and zsh

`stow -d config -t ~ <profile>`

### for .config

`stow -d config -t ~/.config .config`
```
```
