echo ".zsh/config/tmux.zsh"

TMUX_DefaultSession="home"

function __trap_exit_tmux() {
  NO_WINDOWS=`tmux list-windows | wc -l`

  if [[ $NO_WINDOWS == 1 ]]; then
    NO_PANES=`tmux list-panes | wc -l`

    if [[ $NO_PANES == 1 ]]; then
      tmux switch-client -t ${TMUX_DefaultSession}
    fi
  fi
}

if [[ -o interactive ]]; then
  trap __trap_exit_tmux EXIT
fi

