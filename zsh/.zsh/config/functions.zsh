#-----------------------------------------------------------------------------
# Functions
#-----------------------------------------------------------------------------

fpath=( ${ZSHCONFDIR}/functions "${fpath[@]}" )
#autoload -U $fpath[1]/*(.:t)
autoload -Uz godmode
autoload -Uz install_zplug
autoload -Uz lspath

