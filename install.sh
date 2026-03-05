#!/usr/bin/env bash
# ensure you set the executable bit on the file with `chmod u+x install.sh`

# If you remove the .example extension from the file, once your workspace is created and the contents of this
# repo are copied into it, this script will execute.  This will happen in place of the default behavior of the workspace system,
# which is to symlink the dotfiles copied from this repo to the home directory in the workspace.


set -euo pipefail

# Install stow if needed
sudo apt install stow

# Clone the repo
git clone git@github.com:DataDog/experimental.git ~/dd/experimental

# Install all packages (on a fresh machine)
cd ~/dd/experimental/users/juant.garcia/dotfiles
make install

# If configs already exist, adopt them first
make adopt        # moves existing files into dotfiles/, creates symlinks
git diff          # review what differs from managed versions
git checkout .    # keep the managed versions (or commit to keep yours)