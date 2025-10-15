# Dotfiles

My personal dotfiles for Hyprland setup.

## Contents

- **Hyprland** - Window manager configuration
- **Waybar** - Status bar
- **Rofi** - Application launcher
- **Dunst** - Notification daemon
- **Nvim** - Neovim configuration
- **Kitty/Alacritty/Ghostty** - Terminal emulators
- **Pywal** - Dynamic color schemes
- **Custom Scripts** - wal-hypr for wallpaper/theme management

## Installation

```bash
# Clone the repository
git clone <your-repo-url> ~/dotfiles

# Symlink configs (example)
ln -sf ~/dotfiles/.config/hypr ~/.config/hypr
ln -sf ~/dotfiles/.config/waybar ~/.config/waybar
ln -sf ~/dotfiles/.local/bin/wal-hypr ~/.local/bin/wal-hypr
```

## Custom Scripts

### wal-hypr
Wallpaper and theme manager using pywal. Updates:
- Hyprland colors
- Firefox/Zen Browser theme
- Generates pywal color schemes

Usage: `wal-hypr /path/to/wallpaper`
