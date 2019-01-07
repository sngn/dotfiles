echo ".zshrc"

if [[ -o interactive ]]; then
  #echo "*** interactive ***"

  ### smartcd
  [ -r "$HOME/.smartcd_config" ] && ( [ -n $BASH_VERSION ] || [ -n $ZSH_VERSION ] ) && source ~/.smartcd_config && alias scd='smartcd cd'
  #export ENHANCD_COMMAND="smartcd cd"
  export ENHANCD_COMMAND="scd"
  export ENHANCD_DISABLE_DOT=1

  ### z
  [[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

  ### envoy 
  #eval $(envoy -p)

  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
fi

source ~/.zsh/config/config.zsh

