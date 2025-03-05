#!/bin/bash

# This is not supposed to be run (yet). It is just a writeup
exit 1

mkdir -p ~/git/private
git clone git@github.com:franznemeth/nvim.git ~/.config/nvim
nvim -c "Lazy"
git clone https://github.com/gpakosz/.tmux.git ~/.tmux/
ln -s -f ~/.tmux/.tmux.conf ~/.tmux.conf
git clone git@github.com:franznemeth/dotfiles.git ~/git/private/dotfiles
ln -s ~/git/private/dotfiles/oh-my-zsh/.zshrc ~/.zshrc
ln -s ~/git/private/dotfiles/alacritty/.alacritty.toml ~/.alacritty.toml
ln -s ~/git/private/dotfiles/tmux/.tmux.conf.local ~/.tmux.conf.local


kc krew install neat slice exec-cronjob virt
npm install -g neovim
gem install neovim


# Mac Only
mkdir -p ~/Pictures/Screenshots
defaults write com.apple.screencapture location /Users/franz.nemeth/Pictures/Screenshots

