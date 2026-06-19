#!/bin/bash

# This is not supposed to be run (yet). It is just a writeup
exit 1

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p ~/git/private
git clone git@github.com:franznemeth/nvim.git ~/.config/nvim
nvim -c "Lazy"
git clone https://github.com/gpakosz/.tmux.git ~/.tmux/
ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
ln -s "$DOTFILES_DIR/oh-my-zsh/.zshrc" ~/.zshrc
ln -s "$DOTFILES_DIR/alacritty/.alacritty.toml" ~/.alacritty.toml
ln -s "$DOTFILES_DIR/tmux/.tmux.conf.local" ~/.tmux.conf.local
mkdir -p ~/.config/ghostty/themes
ln -s "$DOTFILES_DIR/ghostty/config" ~/.config/ghostty/config
ln -s "$DOTFILES_DIR/ghostty/molokai-modified.conf" ~/.config/ghostty/themes/molokai-modified


kc krew install neat slice exec-cronjob virt
npm install -g neovim
gem install neovim


# Mac Only
mkdir -p ~/Pictures/Screenshots
defaults write com.apple.screencapture location ~/Pictures/Screenshots
