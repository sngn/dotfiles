# If not running interactively, don't do anything
[[ $- == *i* ]] || return

echo ".zshenv"


if [[ -o interactive ]]; then

  ### envoy 
  #eval $(envoy -p)
  ### keychain
  eval $(keychain --eval --quiet id_rsa)

fi

### python-virtualenvwrapper
# disabled because i dont want to use this anymore.. find other solution, prob generic python venv
#export WORKON_HOME=~/programming/python_virtual_environments
#source /usr/bin/virtualenvwrapper.sh
