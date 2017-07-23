echo ".zlogin"

if [[ -o interactive ]]; then
  ### welcome message
  source ${ZSHCONFDIR}/config/welcome.zsh
fi
