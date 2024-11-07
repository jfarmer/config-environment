# zsh - Environment variables
#
# Order of loading:
#   zshenv > zprofile > zshrc > zlogin > zlogout

export HISTSIZE=1000000000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY
setopt INTERACTIVE_COMMENTS

export HOMEBREW_NO_ENV_HINTS=1

## Capital letters mean 'bold'; don't use bold colors
# export LSCOLORS=ExGxFxdxCxDxDxaccxaeex
export LSCOLORS="exgxfxdxcxdxdxaccxaeex"

export EDITOR="vim"

declare JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_HOME

export GITHUB_DIR="${HOME}/github"
