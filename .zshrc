# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

export EDITOR=nvim

# Aliases
alias bs="browser-sync start --server --files \".\""
alias gs="git status"
alias pr="node ~/utils/px-to-rem.js"
alias fo="node ~/utils/file-organizer.js"
alias dot="cd ~/dotfiles/;nvim ."

alias tw="the-way search"
alias twa="the-way new"

export FLYCTL_INSTALL="/home/k/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

export PATH=~/bin:$PATH
