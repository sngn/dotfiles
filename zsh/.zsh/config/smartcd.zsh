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

#export ENHANCD_COMMAND="smartcd cd"
export ENHANCD_COMMAND="scd"
export ENHANCD_DISABLE_DOT=1

