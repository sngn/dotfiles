echo ".zshrc"
#-----------------------------------------------------------------------------
# ZSH Configuration
#-----------------------------------------------------------------------------

export ZSHCONFDIR=$HOME/.zsh
ZSHCOMPLETIONSDIR="$ZSHCONFDIR/completions"

source ${ZSHCONFDIR}/config/default_options.zsh

### BEFORE
source $ZSHCONFDIR/config/poetry.zsh # before completions.zsh
source $ZSHCONFDIR/config/zsh-vi-mode.zsh # before zplug.zsh
source $ZSHCONFDIR/config/zplug.zsh # before zsh.zsh

### UNORDERED
source $ZSHCONFDIR/config/aliases.zsh
source $ZSHCONFDIR/config/autosuggestions.zsh
source $ZSHCONFDIR/config/completions.zsh
source $ZSHCONFDIR/config/functions.zsh
source $ZSHCONFDIR/config/hstr.zsh
source $ZSHCONFDIR/config/node-yo.zsh
source $ZSHCONFDIR/config/nvm.zsh
source $ZSHCONFDIR/config/prompt.zsh
#source $ZSHCONFDIR/config/smartcd.zsh
source $ZSHCONFDIR/config/tmux.zsh
source $ZSHCONFDIR/config/z.zsh
source $ZSHCONFDIR/config/zsh.zsh

### AFTER

# TODO order
source ${ZSHCONFDIR}/config/path.zsh
#source ${ZSHCONFDIR}/config/direnv.zsh # using quickenv

