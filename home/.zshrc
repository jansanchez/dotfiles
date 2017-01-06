# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

ZSH_THEME="sunrise"
# ZSH_THEME="half-life"

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

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

plugins=(git zsh-syntax-highlighting zsh-history-substring-search zsh-url-highlighter zsh-wakatime battery)

# Customize to your needs...

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export PATH=/usr/local/share/npm/bin:$PATH

source $ZSH/oh-my-zsh.sh

source ~/.bash_aliases

# final del archivo

if [ -f ~/.custom_functions ]; then
    source ~/.custom_functions
fi

if [ -f ~/.profile ]; then
    source ~/.profile
fi

#if [ -f ~/.fzf.zsh ]; then
#    source ~/.fzf.zsh
#fi

# enhancd
#if [ -f "~/.enhancd/zsh/enhancd.zsh" ]; then
#    source "~/.enhancd/zsh/enhancd.zsh"
#fi

# Wakatime
source ~/Applications/bash-wakatime/bash-wakatime.sh

###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

LC_CTYPE=es_ES.UTF-8
LC_ALL=es_419.UTF-8
