if [[ -o interactive ]]; then
  if [[ ! -o norcs ]]; then
    # commands to run if NO_RCS is not set, such as setting options
    echo ".zshenv"
  fi
else
  # If not running interactively, don't do anything
  return
fi

