# vcs_info is built into zsh
# See:
#   https://arjanvandergaag.nl/blog/customize-zsh-prompt-with-vcs-info.html
#   https://github.com/zsh-users/zsh/blob/master/Misc/vcs_info-examples

autoload -Uz vcs_info
precmd() {
  vcs_info
}

setopt prompt_subst
PROMPT='%F{red}%2~%f %F{75}${vcs_info_msg_0_}%f%F{208}%#%f '

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' unstagedstr '%F{9}*%f'
zstyle ':vcs_info:*' stagedstr '%F{178}+%f'
zstyle ':vcs_info:git:*' formats '(%b%u%c) '

export PROMPT="%F{yellow}%m%f $PROMPT"
