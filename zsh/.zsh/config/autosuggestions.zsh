echo ".zsh/config/autosuggestions.zsh"
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

