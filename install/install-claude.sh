#!/bin/bash

# This is not supposed to be run (yet). It is just a writeup
exit 1

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

mkdir -p ~/.claude
ln -s "$DOTFILES_DIR/claude/statusline.sh" ~/.claude/statusline.sh
ln -s "$DOTFILES_DIR/claude/settings.json" ~/.claude/settings.json
claude plugin install obsidian@obsidian-skills
claude plugin install ponytail@ponytail
claude plugin install ui-ux-pro-max@ui-ux-pro-max-skill
claude plugin install taste-skill@taste-skill
npx skills add emilkowalski/skills --skill '*' -g -a claude-code -y
