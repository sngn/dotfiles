echo ".zsh/config/poetry.zsh"

POETRYPATH="$HOME/.poetry/bin"
POETRYEXE="$POETRYPATH/poetry"

if [[ -x $POETRYEXE ]]; then
  export PATH="$POETRYPATH:$PATH"

  COMPFILE="$ZSHCOMPLETIONSDIR/_poetry"

  if [[ ! -s $COMPFILE ]]; then
    COMPCOMMAND="$POETRYEXE completions zsh"
    eval $COMPCOMMAND > $COMPFILE
  fi
fi

