# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Add datadog devtools binaries to the PATH
export PATH="$HOME/dd/devtools/bin:$PATH"

# Point GOPATH to our go sources
export GOPATH="$HOME/go"

# Add binaries that are go install-ed to PATH
export PATH="$GOPATH/bin:$PATH"

# Point DATADOG_ROOT to ~/dd symlink
export DATADOG_ROOT="$HOME/dd"

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git bazel brew docker gcloud golang)

source $ZSH/oh-my-zsh.sh

# User configuration

alias claude="ddtool auth login --datacenter us1.ddbuild.io && claude --model opus"
alias gpl="git pull origin"
alias gps="git push origin"
alias gchb="git checkout -b"
alias gch="git checkout"
alias gcm="git commit -m"
alias gr="git rebase"
alias gs="git status"
alias gdf="git diff"
alias gdfs="git diff --staged"
