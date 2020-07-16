echo ".profile"
#-----------------------------------------------------------------------------
# PATH variable
#-----------------------------------------------------------------------------

### guix
#export GUIX_PROFILE="$HOME/.guix-profile"
#source "$GUIX_PROFILE/etc/profile"
##PATH="$HOME/.config/guix/current/bin${PATH:+:}$PATH"
#PATH="$HOME/.config/guix/current/bin:$PATH"
##PATH="$GUIX_PROFILE/bin${PATH:+:}$PATH"
#PATH="$GUIX_PROFILE/bin:$PATH"

##export GIO_EXTRA_MODULES="$GUIX_PROFILE/lib/gio/modules${GIO_EXTRA_MODULES:+:}$GIO_EXTRA_MODULES"
#export GIO_EXTRA_MODULES="$GUIX_PROFILE/lib/gio/modules:$GIO_EXTRA_MODULES"
#export GUIX_LOCPATH="$GUIX_PROFILE/lib/locale"
##export XDG_DATA_DIRS="$GUIX_PROFILE/share${XDG_DATA_DIRS:+:}$XDG_DATA_DIRS"
#export XDG_DATA_DIRS="$GUIX_PROFILE/share:$XDG_DATA_DIRS"
#export QT_AUTO_SCREEN_SCALE_FACTOR=0 # because vlc installed via guix doesnt appear right 

##export NODE_PATH="$GUIX_PROFILE/lib/node_modules${NODE_PATH:+:}$NODE_PATH"
#export NODE_PATH="$GUIX_PROFILE/lib/node_modules:$NODE_PATH"

### Node.js
# "Global" for $USER
PATH=~/npm/bin:$PATH
#export npm_config_prefix=~/npm
#export NPM_CONFIG_PREFIX=~/npm
# "Local" for $USER
PATH=~/node_modules/.bin:$PATH

### Ruby
#PATH=~/.gem/ruby/2.4.0/bin:$PATH
#PATH=~/.gem/ruby/2.5.0/bin:$PATH
PATH=~/.gem/ruby/2.6.0/bin:$PATH
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

PATH=$HOME/bin/appimages:$PATH
PATH=$HOME/bin:$PATH
PATH=$HOME/bin/tmux_sessions:$PATH

export PATH

#-----------------------------------------------------------------------------
# other variables
#-----------------------------------------------------------------------------
umask 022

export EDITOR=vim
export SYSTEMD_EDITOR=$EDITOR
#export TERM=xterm-256color
#export TERM=xterm-color

[ "$XDG_CURRENT_DESKTOP" = "KDE" ] || [ "$XDG_CURRENT_DESKTOP" = "GNOME" ] || export QT_QPA_PLATFORMTHEME="qt5ct"

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

export LESS='--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS'

