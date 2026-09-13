[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&size=30&pause=1000&color=FFFFFF&center=true&vCenter=true&width=1000&lines=Mando's+Dotfiles;A+Streamlined+UNIX+Environment)](https://git.io/typing-svg)

## Hyprland and Shell
<p float="left">
  <img alt="" src=".readme/3.png" width="48%" />
  <img alt="" src=".readme/14.png" width="48%" />
  <img alt="" src=".readme/11.png" width="48%" />
  <img alt="" src=".readme/12.png" width="48%" />
</p>

## Ghostty TUI 
<p float="left">
  <img alt="" src=".readme/tui.png" width="96%" />
</p>

## Adwaita GUI
<p float="left">
  <img alt="" src=".readme/gtk-2.png" width="96%" />
</p>

---

A Structured and Reproducible configuration using GNU Stow.
This repository contains my production dotfiles,
this collection is intentionally minimal, and is intended to be used with a nix-project.
custom configurations are seperated from the system's through the useage of symlinks.
current configurations follows the UNIX principle, though many tasks may later be handled by quickshell.

## GNU Stow commands 
Configs under `~/` including `.config` are stored in:
`~/.dotfiles/`

Example:
`origin:  ~/.dotfiles/config/hypr/main.lua`
`symlink: ~/.config/hypr/main.lua`

Apply config:
`cd ~/.dotfiles/config`
`stow -n -v -d ~/.dotfiles -t ~/.config config` (dryrun)
`stow -d ~/.dotfiles -t ~/.config config` (apply)

Remove config:
`stow -D -t ~/.config */`

Each top-level folder is a Stow package; Stow handles its contents recursively.

---

## System & Desktop Layer
#### Foundational components that shape the core desktop experience.
- Hyprland
- Hyprlock
- Hyprsunset
- SwayNC
- SwayOSD
- vicinae
- Waybar

#### Tools that define the interactive and programming environment.
- ghostty
- micro
- yazi
- Btop
- fastfetch
