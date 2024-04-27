echo ".profile"
#-----------------------------------------------------------------------------
# profile
#-----------------------------------------------------------------------------
umask 022

export EDITOR=nvim
export SYSTEMD_EDITOR=$EDITOR
#export TERM=xterm-256color
#export TERM=xterm-color

[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

export LESS='--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS'

