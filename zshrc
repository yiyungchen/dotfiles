source /opt/devtool6.rc

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Term
export TERM='xterm-256color'

# Bindkey
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line

# Alias
alias ag='ag --ignore tags --ignore "cscope.*"'

# No share history
setopt noincappendhistory
setopt nosharehistory
