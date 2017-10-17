echo ".zsh/config/config.zsh"
#-----------------------------------------------------------------------------
# Defaults
#-----------------------------------------------------------------------------
export ZSHCONFDIR=$HOME/.zsh

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

bindkey -e
source ${ZSHCONFDIR}/config/default_options.zsh

#-----------------------------------------------------------------------------
# plugins
#-----------------------------------------------------------------------------
### zplug
source ~/.zplug/init.zsh

zplug "akoenig/gulp.plugin.zsh"
zplug "arzzen/calc.plugin.zsh"
zplug "b4b4r07/enhancd", use:"init.sh"
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

# Then, source plugins and add commands to $PATH
zplug load --verbose

#-----------------------------------------------------------------------------
# Functions
#-----------------------------------------------------------------------------
fpath=( ${ZSHCONFDIR}/functions $fpath )
autoload -Uz godmode install_zplug clearpc

#-----------------------------------------------------------------------------
# Autosuggestions
#-----------------------------------------------------------------------------

if zplug check zsh-users/zsh-autosuggestions; then
  # Add history-substring-search-* widgets to list of widgets that clear the autosuggestion
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(history-substring-search-up history-substring-search-down) 

  # Remove *-line-or-history widgets from list of widgets that clear the autosuggestion 
  # to avoid conflict with history-substring-search-* widgets
  ZSH_AUTOSUGGEST_CLEAR_WIDGETS=("${(@)ZSH_AUTOSUGGEST_CLEAR_WIDGETS:#(up|down)-line-or-history}") 
  #autosuggest_start # Enable autosuggestions
  #ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=7"
fi

#-----------------------------------------------------------------------------
# Completions
#-----------------------------------------------------------------------------
# Enable completions
if [ -d ~/.zsh/comp ]; then
    fpath=(~/.zsh/comp $fpath)
    autoload -U ~/.zsh/comp/*(:t)
fi

zstyle ':completion:*' group-name ''
zstyle ':completion:*:messages' format '%d'
zstyle ':completion:*:descriptions' format '%d'
zstyle ':completion:*:options' verbose yes
zstyle ':completion:*:values' verbose yes
zstyle ':completion:*:options' prefix-needed yes
# Use cache completion
# apt-get, dpkg (Debian), rpm (Redhat), urpmi (Mandrake), perl -M,
# bogofilter (zsh 4.2.1 >=), fink, mac_apps...
zstyle ':completion:*' use-cache true
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' matcher-list \
    '' \
    'm:{a-z}={A-Z}' \
    'l:|=* r:|[.,_-]=* r:|=* m:{a-z}={A-Z}'
# sudo completions
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
    /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
zstyle ':completion:*' menu select
zstyle ':completion:*' keep-prefix
zstyle ':completion:*' completer _oldlist _complete _match _ignored \
    _approximate _list _history

autoload -U compinit; compinit -d ~/.zcompdump

# Original complete functions
compdef '_files -g "*.hs"' runhaskell
compdef _man w3mman
compdef _tex platex

# cd search path
cdpath=($HOME)

zstyle ':completion:*:processes' command "ps -u $USER -o pid,stat,%cpu,%mem,cputime,command"

#zstyle -e ':completion:*' special-dirs '[[ $PREFIX = (../)#(|.|..) ]] && reply=(..)'
#
#zstyle ':completion:*:*:users' ignored-patterns \
#    avahi bin daemon dbus ftp mail nobody dnsmasq \
#    kdm mongodb mysql ntp polkitd rtkit usbmux uuidd \
#    __pycache__

#-----------------------------------------------------------------------------
# appearance
#-----------------------------------------------------------------------------
source ~/.zsh/config/prompt.zsh

#-----------------------------------------------------------------------------
# interaction
#-----------------------------------------------------------------------------
# bind special keys according to readline configuration
eval "$(sed -n 's/^/bindkey /; s/: / /p' /etc/inputrc)"
# do not erase entire line when Control-U is pressed
bindkey '^U' backward-kill-line

if [ -f /etc/profile.d/fzf.zsh ]; then
  source /etc/profile.d/fzf.zsh
fi
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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
# Aliases
#-----------------------------------------------------------------------------
source $HOME/.aliases
source ${ZSHCONFDIR}/config/aliases.zsh

#-----------------------------------------------------------------------------
# other stuff
#-----------------------------------------------------------------------------

# tabtab source for yo package
[[ -f ~/npm/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh ]] && . ~/npm/lib/node_modules/yo/node_modules/tabtab/.completions/yo.zsh

