# If not running interactively, don't do anything
[[ $- == *i* ]] || return

echo ".zshenv"


if [[ -o interactive ]]; then

  ### keychain
  #eval $(keychain --eval --quiet id_rsa)
  #eval $(keychain --eval --quiet id_ecdsa)
  #eval $(keychain --eval --quiet id_rsa id_ecdsa)

fi

