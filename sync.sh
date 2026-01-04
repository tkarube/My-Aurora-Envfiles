#!/usr/bin/env bash

# LazyVim
rsync -av --delete -n ~/.config/LazyVim/lua/ ./_config/LazyVim/lua/

# wezterm
rsync -av --delete ~/.config/wezterm/ ./_config/wezterm/

# .local/bin
rsync -av --delete ~/.local/bin/ ./_local/bin/

# .myzsh
rsync -av --delete ~/.myzsh ./_myzsh
