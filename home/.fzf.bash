# Setup fzf
# ---------
if [[ ! "$PATH" =~ "/home/jan/.fzf/bin" ]]; then
  export PATH="$PATH:/home/jan/.fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" =~ "/home/jan/.fzf/man" && -d "/home/jan/.fzf/man" ]]; then
  export MANPATH="$MANPATH:/home/jan/.fzf/man"
fi

# Auto-completion
# ---------------
[[ $- =~ i ]] && source "/home/jan/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/jan/.fzf/shell/key-bindings.bash"

