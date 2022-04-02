echo ".zsh/config/zsh.zsh"
#-----------------------------------------------------------------------------
# more ZSH Configuration
#-----------------------------------------------------------------------------

### zsh history
HISTFILE=$HOME/.zsh_history
HISTSIZE=9999
SAVEHIST=9999
#setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
#setopt SHARE_HISTORY
#setopt EXTENDED_HISTORY
#setopt HIST_IGNORE_DUPS
#setopt HIST_IGNORE_ALL_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_SAVE_NO_DUPS
#setopt HIST_FIND_NO_DUPS
setopt HIST_ALLOW_CLOBBER
setopt HIST_REDUCE_BLANKS
#setopt NO_HIST_BEEP

### keybindings
# emacs keybindings
#bindkey -e
# vi keybindings
bindkey -v

#-----------------------------------------------------------------------------
# interaction
#-----------------------------------------------------------------------------
# bind special keys according to readline configuration
eval "$(sed -n 's/^/bindkey /; s/: / /p' /etc/inputrc)"
# do not erase entire line when Control-U is pressed
bindkey '^U' backward-kill-line

source ~/.zsh/config/fzf.zsh

#-----------------------------------------------------------------------------
# zsh-history-substring-search
#-----------------------------------------------------------------------------
#if test $TERM != linux; then
#  HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND='fg=yellow,standout'
#  HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_NOT_FOUND='fg=red,standout'
#fi

# bind UP and DOWN arrow keys
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down

# bind UP and DOWN arrow keys (compatibility fallback
# for Ubuntu 12.04, Fedora 21, and MacOSX 10.9 users)
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down

# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down


#-----------------------------------------------------------------------------
# zsh-syntax-highlighting
#-----------------------------------------------------------------------------
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='bold'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='bold'

#-----------------------------------------------------------------------------
# other stuff
#-----------------------------------------------------------------------------

