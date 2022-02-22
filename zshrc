# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Command not found hint
[[ -r /etc/zsh_command_not_found ]] && . /etc/zsh_command_not_found

# Theme
ZSH_THEME="ys"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Term
export TERM='xterm-256color'

# Bindkey
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

# Alias
alias ag='ag --ignore tags --ignore "cscope.*"'
alias tig='TERM=screen-256color tig'
alias ssh='TERM=screen-256color ssh'
alias tel='cd ~/git/magnus-checker; python3.7 telnet.py'
alias sq='squeue --format="%.18i %.9P %.30j %.8u %.2t %.10M %.6D %R %x %Q %h"'
alias sqc="squeue --format='%.18i %.9P %.30j %.8u %.2t %.10M %.6D %R %x %Q %h' | awk -F ' ' '{print \$3,\$4,\$5}' | grep -v NAME | sort | uniq -c; sq | wc -l"

# No share history
setopt noincappendhistory
setopt nosharehistory
