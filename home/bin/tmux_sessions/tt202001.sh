#!/bin/sh

set -euC

PROJECT_DIR=~/programming/projects/websites/techtest/setup-2020-01
TMUX_SESSION_NAME="techtest202001"

cd $PROJECT_DIR

att() {
    [ -n "${TMUX:-}" ] &&
        tmux switch-client  -t "=$TMUX_SESSION_NAME" ||
        tmux attach-session -t "=$TMUX_SESSION_NAME"
}

if tmux has-session -t "=$TMUX_SESSION_NAME" 2> /dev/null; then
    att
    exit 0
fi

tmux new-session -d -s   $TMUX_SESSION_NAME  -n config
tmux new-window  -d -t "=$TMUX_SESSION_NAME" -n manage
tmux new-window  -d -t "=$TMUX_SESSION_NAME" -n code -c $PROJECT_DIR/src

tmux send-keys -t "=$TMUX_SESSION_NAME:=config" "vim -S ~/.vim/sessions/tt2020-01-config.vim" Enter
tmux send-keys -t "=$TMUX_SESSION_NAME:=code"   "vim -S ~/.vim/sessions/tt2020-01-code.vim" Enter

att

