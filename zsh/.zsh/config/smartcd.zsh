echo ".zsh/config/smartcd.zsh"
#-----------------------------------------------------------------------------
# smartcd
#-----------------------------------------------------------------------------

FILE="$HOME/.smartcd_config"

#[ -r $FILE ] \
#&& ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) \
#&& source $FILE
[ -r $FILE ] \
  && ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) \
  && source $FILE \
  && alias scd='smartcd cd'

