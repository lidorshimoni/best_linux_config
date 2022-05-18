export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions web-search zsh-syntax-highlighting docker pipenv tmux python)
ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh
source ~/.exports
source ~/.aliases
source ~/.functions
export LANG=en_US.UTF-8

eval "`pip completion --zsh`"
compctl -K _pip_completion pip3

eval $(thefuck --alias)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## ROS-HACKS entries ##
#PS1=' \[\e[1;32m\]\u\[\033[00m\] \[\e[32m\]$(get_current_ws_name):$ROS_DOMAIN_ID\[\033[00m\] \[\033[03;94m\]\w\[\033[00m\]\[\033[38;5;51m\]$(__git_ps1)\[\033[00m\]:\n$ '
#source /home/lidor/.ROS-Hacks/aliases.sh
#source /home/lidor/.ROS-Hacks/functions.sh
#get_current_ws
#source_ws $curr_ws
## ROS-HACKS END ##
