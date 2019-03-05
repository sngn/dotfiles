echo ".profile"
#-----------------------------------------------------------------------------
# PATH variable
#-----------------------------------------------------------------------------

### guix
#GUIX_PROFILE="$HOME/.guix-profile"
export GUIX_PROFILE="$HOME/.guix-profile"
source "$GUIX_PROFILE/etc/profile"
PATH="/home/max/.config/guix/current/bin${PATH:+:}$PATH"
PATH="$GUIX_PROFILE/bin${PATH:+:}$PATH"
export GUIX_LOCPATH="$GUIX_PROFILE/lib/locale"
export XDG_DATA_DIRS="$GUIX_PROFILE/share${XDG_DATA_DIRS:+:}$XDG_DATA_DIRS"
export GIO_EXTRA_MODULES="$GUIX_PROFILE/lib/gio/modules${GIO_EXTRA_MODULES:+:}$GIO_EXTRA_MODULES"

### Node.js
# "Global" for $USER
PATH=~/npm/bin:$PATH
#export npm_config_prefix=~/npm
# "Local" for $USER
PATH=~/node_modules/.bin:$PATH

### Ruby
#PATH=~/.gem/ruby/2.4.0/bin:$PATH
PATH=~/.gem/ruby/2.5.0/bin:$PATH
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

PATH=$HOME/bin:$PATH

export PATH

#-----------------------------------------------------------------------------
# other variables
#-----------------------------------------------------------------------------
umask 022

export EDITOR=vim
export SYSTEMD_EDITOR=$EDITOR
#export TERM=xterm-256color
export TERM=xterm-color

[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

export LESS='--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS'

