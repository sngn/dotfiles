echo ".profile"
#-----------------------------------------------------------------------------
# PATH variable
#-----------------------------------------------------------------------------
PATH=$HOME/bin:$PATH

### Node.js
# "Global" for $USER
PATH=~/npm/bin:$PATH
#export npm_config_prefix=~/npm
# "Local" for $USER
PATH=~/node_modules/.bin:$PATH

### Ruby
PATH=~/.gem/ruby/2.4.0/bin:$PATH
export GEM_HOME=$(ruby -e 'print Gem.user_dir')

export PATH

#-----------------------------------------------------------------------------
# other variables
#-----------------------------------------------------------------------------
umask 022

export EDITOR=vim
export SYSTEMD_EDITOR=$EDITOR
export TERM=xterm-256color

WORDCHARS='*?_-.[]~=&;!#$%^(){}<>'

export LESS='--tabs=4 --no-init --LONG-PROMPT --ignore-case --quit-if-one-screen --RAW-CONTROL-CHARS'

