# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="refined"

plugins=( 
    git
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Check archlinux plugin commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/archlinux


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos



### From this line is for pywal-colors
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
#(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh

# My alias 

alias cty='tty-clock -S -c -C 6 -t -n -D'
alias fucking='sudo'
alias n='nvim'
alias cls='clear'
alias t='tmux'
alias ta='tmux attach'
alias tl='tmux ls'
alias cd..='cd ..'
alias cd...='cd ../../'
alias gc='git clone '
alias ga='git add .'
alias gcm='git commit -m'
alias gp='git push'
alias gs='git status'
alias ll='ls -Alh'
alias ls='lsd --group-dirs first --icon never'
#alias cat='bat'
alias gcc='g++ -o o'
alias py='python3'
#alias pycharm='/home/hasht/pycharm-community-2024.3.2/bin/pycharm.sh'
#alias kali='distrobox-enter kali'
#alias Kali='distrobox-enter --root Kali'
alias env3='source ~/.venvs/hasht/bin/activate'
alias mkdir='mkdir -p'


# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
# Chỉ gọi alias kali khi sử dụng Kitty terminal
#if [[ $TERM == "xterm-256color" ]]; then
#    kali
#    clear
    #export PATH=$PATH:/home/hasht/.pdtm/go/bin
#    source ~/hashtenv/bin/activate
#fi
#pdtm
export PATH=$PATH:/home/hasht/go/bin
#tools pdtm
export PATH=$PATH:/home/hasht/.pdtm/go/bin

export GOROOT=/usr/lib/go  # Update this to the correct path
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

# Created by `pipx` on 2025-02-03 11:40:30
export PATH="$PATH:/home/hasht/.local/bin"

#env3
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export PATH="/Applications/Sublime Text.app/Contents/SharedSupport/bin:$PATH"



[ -f "/home/hasht/.ghcup/env" ] && . "/home/hasht/.ghcup/env" # ghcup-env
#source .virtualenvs/jupynium/bin/activate
env3


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/hasht/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/hasht/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/hasht/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/hasht/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="$HOME/miniconda3/bin:$PATH"
