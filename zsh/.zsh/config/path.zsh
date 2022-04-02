echo ".zsh/config/path.zsh"
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
path=("$HOME/npm/bin" "$path[@]")
#export npm_config_prefix=$HOME/npm
#export NPM_CONFIG_PREFIX=$HOME/npm
# "Local" for $USER
path=("$HOME/node_modules/.bin" "$path[@]")

### Ruby
export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
path=("$GEM_HOME/bin" "$path[@]")

### local
path=("$HOME/.local/bin" "$path[@]")
path=("$HOME/bin/appimages" "$path[@]")
path=("$HOME/bin" "$path[@]")
path=("$HOME/bin/tmux_sessions" "$path[@]")

typeset -U PATH path # remove duplicates from PATH and path
export PATH

