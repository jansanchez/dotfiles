# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="sunrise"
#ZSH_THEME="half-life"

#ZSH_THEME="sunrise"
#ZSH_THEME="ginux"
#ZSH_THEME="norm"
#ZSH_THEME="smt"
#ZSH_THEME="half-life"
#ZSH_THEME="wezm+"
#ZSH_THEME="nanotech"
#ZSH_THEME="jonathan"
#ZSH_THEME="lambda"
#ZSH_THEME="robbyrussell"
#ZSH_THEME="geoffgarside"
#ZSH_THEME="pygmalion"
#ZSH_THEME="steeef"
#ZSH_THEME="gnzh"
#ZSH_THEME="arrow"
#ZSH_THEME="avit"
#ZSH_THEME="crunch"
#ZSH_THEME="gallifrey"
#ZSH_THEME="fino"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git zsh-syntax-highlighting zsh-history-substring-search zsh-url-highlighter zsh-wakatime battery)

# Customize to your needs...

export PATH=/usr/local/share/npm/bin:$PATH
export TERM=xterm-256color
export LC_CTYPE=es_ES.UTF-8
export LC_ALL=es_ES.UTF-8

#source $ZSH/oh-my-zsh.sh
source ~/.bash_aliases
