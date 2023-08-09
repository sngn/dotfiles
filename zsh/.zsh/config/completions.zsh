echo ".zsh/config/completions.zsh"
#-----------------------------------------------------------------------------
# Completions
#-----------------------------------------------------------------------------

# Enable completions
if [ -d $ZSHCOMPLETIONSDIR ]; then
    fpath=($ZSHCOMPLETIONSDIR $fpath)
    autoload -U $ZSHCOMPLETIONSDIR/*(:t)
fi

zstyle ':completion:*' completer _oldlist _complete _match _ignored _approximate _list _history
#zstyle ':completion:*' file-list all
zstyle ':completion:*' file-sort dummyvalue
zstyle ':completion:*' group-name ''
zstyle ':completion:*' keep-prefix
zstyle ':completion:*' matcher-list \
    '' \
    'm:{a-z}={A-Z}' \
    'l:|=* r:|[.,_-]=* r:|=* m:{a-z}={A-Z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' use-cache true

zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:*:*:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:*:*:default' menu select=1
#zstyle ':completion:*:*:*:*:descriptions' format '%d'
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:messages' format '%d'
zstyle ':completion:*:*:*:*:options' prefix-needed yes
zstyle ':completion:*:*:*:*:options' verbose yes
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,stat,%cpu,%mem,cputime,command"
zstyle ':completion:*:*:*:*:values' verbose yes

#zstyle ':completion:*:*:-command-:*:*' group-order alias builtins functions commands
zstyle ':completion:*:*:cd:*' ignore-parents parent pwd
zstyle ':completion:*:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin

autoload -U compinit
compinit -d ~/.zcompdump

# Original complete functions
compdef '_files -g "*.hs"' runhaskell
compdef _man w3mman
compdef _tex platex

# cd search path
cdpath=($HOME)

#zstyle -e ':completion:*' special-dirs '[[ $PREFIX = (../)#(|.|..) ]] && reply=(..)'

#zstyle ':completion:*:*:users' ignored-patterns \
#    avahi bin daemon dbus ftp mail nobody dnsmasq \
#    kdm mongodb mysql ntp polkitd rtkit usbmux uuidd \
#    __pycache__

