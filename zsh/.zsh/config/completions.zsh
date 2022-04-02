echo ".zsh/config/completions.zsh"
#-----------------------------------------------------------------------------
# Completions
#-----------------------------------------------------------------------------

# Enable completions
if [ -d $ZSHCOMPLETIONSDIR ]; then
    fpath=($ZSHCOMPLETIONSDIR $fpath)
    autoload -U $ZSHCOMPLETIONSDIR/*(:t)
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

autoload -U compinit
compinit -d ~/.zcompdump

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

