export PATH="$HOME/bin:$PATH"

# ansible
export ANSIBLE_HOSTS=/etc/ansible/ec2.py
export EC2_INI_PATH=/etc/ansible/ec2.ini

# zsh
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# virtualenv
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# rvm
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

###############
# Completions #
###############

# Completions
autoload -U compinit
compinit -C

# Arrow key menu for completions
zstyle ':completion:*' menu select

# Case-insensitive (all),partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

###########
# Aliases #
###########

# Set up aliases
if [ -f ~/.aliases ]; then
	. ~/.aliases
fi

# Autocomplete command line switches for aliases
setopt completealiases

###########
# History #
###########

# number of lines kept in history
export HISTSIZE=1000
# number of lines saved in the history after logout
export SAVEHIST=1000
# location of history
export HISTFILE=~/.zsh_history
# append command to history file once executed
setopt inc_append_history
# only show past commands that include the current input
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

########
# Misc #
########

# Load autocorrect things
setopt correctall

# Automatically use cd when paths are entered without cd
setopt autocd

# Use emacs keybinds, since they're modeless and closer to bash defaults
bindkey -e

# History search with ctrl-r
bindkey '^R' history-incremental-search-backward
