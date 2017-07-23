echo ".prompt.zsh"

function truncated_pwd() {
	local collapse_width=60
	local pwidth=$(echo $PWD | wc -m)
	if [[ $pwidth -gt $collapse_width ]]; then
		local working_dir_tail=${PWD##*/}
		local output=$(echo $PWD | sed -e "s|^$HOME|~|" -e 's|\(/.\)[^/]*|\1|g' -e "s|.$|$working_dir_tail|")
		echo $output
	else
		echo $PWD | sed 's|^$HOME|~|' 
	fi
}
_fishy_collapsed_wd() {
  echo $(pwd | perl -pe "
   BEGIN {
      binmode STDIN,  ':encoding(UTF-8)';
      binmode STDOUT, ':encoding(UTF-8)';
   }; s|^$HOME|~|g; s|/([^/])[^/]*(?=/)|/\$1|g
")
} 


# VCS integration for ZSH command prompt
autoload -Uz vcs_info
zstyle ':vcs_info:*' enable bzr git hg svn
#zstyle ':vcs_info:*' disable cdv cvs darcs fossil mtn p4 svk tla
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '%F{green}+%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}!%f'
#zstyle ':vcs_info:*' formats '%B%c%u%m%%b%b '
zstyle ':vcs_info:*' formats '%B%c%u%m%%b%b'
#zstyle ':vcs_info:*' actionformats '%B%c%u%m%%b%b %B%F{red}%s:%a%f%%b '
zstyle ':vcs_info:*' actionformats '%B%c%u%m%%b%b %B%F{red}%s:%a%f%%b'
#zstyle ':vcs_info:git*+set-message:*' hooks git-untracked git-aheadbehind git-remotebranch

function precmd() {
	vcs_info
}
RPROMPT='%(?..%B%F{red}exit %?%f%b )${vcs_info_msg_0_}'
# with oh-my-zsh fishy theme function
#PROMPT='%F{%(!|red|green)}%n%f\
#@\
#%F{yellow}%M:%f\
#$(_fishy_collapsed_wd)\
#%F{yellow}%(!|#|>)%f '
# with my own truncated_pwd function - which is not as good yet
PROMPT='%F{%(!|red|green)}%n%f\
@\
%F{yellow}%M:%f\
$(truncated_pwd)\
%F{yellow}%(!|#|>)%f '

