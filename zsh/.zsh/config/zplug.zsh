echo ".zsh/config/zplug.zsh"
#-----------------------------------------------------------------------------
# zplug
#-----------------------------------------------------------------------------

FILE="$HOME/.zplug/init.zsh"

if [[ -r $FILE ]]; then
  source ~/.zplug/init.zsh

  #zplug "MichaelAquilina/zsh-autoswitch-virtualenv"
  zplug "akoenig/gulp.plugin.zsh"
  zplug "arzzen/calc.plugin.zsh"
  zplug "b4b4r07/enhancd", use:"init.sh"
  zplug "jeffreytse/zsh-vi-mode"
  zplug "plugins/git", from:oh-my-zsh
  zplug "lib/clipboard", from:oh-my-zsh
  zplug "rimraf/k"
  zplug "zsh-users/zsh-autosuggestions"
  zplug "zsh-users/zsh-completions"
  zplug "zsh-users/zsh-history-substring-search"
  zplug "zsh-users/zsh-syntax-highlighting", defer:2

  # Install plugins if there are plugins that have not been installed
  if ! zplug check --verbose; then
      printf "Install? [y/N]: "
      if read -q; then
          echo; zplug install
      fi
  fi

  # Then, source plugins and add commands to PATH
  zplug load --verbose
fi

