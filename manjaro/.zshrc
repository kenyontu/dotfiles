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

# Taskwarrior aliases
alias t="task"
alias ta="task add"
alias tn="while true; do clear && task next limit:5; sleep 5; done"

# pacmd aliases
alias sinks="pacmd list-sinks | awk '/index:/ {print \$0} /name:/ {print \$0};'"
alias ssink="pacmd set-default-sink"

export PATH=~/bin:$PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/k/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/k/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/k/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/k/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

