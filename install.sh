#!/usr/bin/env bash

set -euo pipefail

# Install stow if needed
sudo apt install stow

# Clone the repo
git clone git@github.com:DataDog/experimental.git ~/dd/experimental

# Install all packages (on a fresh machine)
cd ~/dd/experimental/users/juant.garcia/dotfiles
# symlinks the files in dotfiles/ to the workspace, gives priority to dotfiles.
make force-install

# Symlink experimental skills
mkdir ~/.claude/skills
for skill in ~/dd/experimental/teams/aaa-user/skills/*/; do
  ln -sf "$skill" ~/.claude/skills/$(basename "$skill")
done
