echo ".zsh/config/hstr.zsh"

alias hh=hstr                    # hh to be alias for hstr
export HSTR_CONFIG=hicolor       # get more colors

hstr_no_tiocsti() {
    zle -I
    { HSTR_OUT="$( { </dev/tty hstr ${BUFFER}; } 2>&1 1>&3 3>&- )"; } 3>&1;
    BUFFER="${HSTR_OUT}"
    CURSOR=${#BUFFER}
    zle redisplay
}

zle -N hstr_no_tiocsti

zvm_after_init_commands+=('bindkey "^R" hstr_no_tiocsti')

export HSTR_TIOCSTI=n

