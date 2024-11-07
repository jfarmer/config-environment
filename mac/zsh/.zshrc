# zsh - Interactive shell (run always)
#
# Order of loading:
#   zshenv > zprofile > zshrc > zlogin > zlogout

export PROMPT_EOL_MARK=''   # Remove % when final EOL missing
export HISTSIZE=1000000     # Bigger history in memory
export SAVEHIST=$HISTSIZE   # Bigger history in file
setopt EXTENDED_HISTORY     # Include timestamps in history
setopt SHARE_HISTORY        # Sync history across open terminals
setopt HIST_FIND_NO_DUPS    # Ignore duplicate commands w/ Ctrl+R

# setopt BEEP                 # Turn on beeping
# setopt LIST_BEEP            # Beep for ambiguous completion
# setopt HIST_BEEP            # Beep at end of history

command_exists () {
  builtin whence "$1" &> /dev/null
}

source_if_exists () {
  # shellcheck disable=SC1090
  if [[ -r "$1" ]]; then
    source "$1"
  fi
}

source_homebrew_file () {
  source_if_exists "${HOMEBREW_PREFIX}/$1"
}

if [[ -r "${HOMEBREW_PREFIX}/opt/zinit/zinit.zsh" ]]; then
  # compinit enabled zsh completions but is very slow to init
  # zinit solves this problem

  source "${HOMEBREW_PREFIX}/opt/zinit/zinit.zsh"

  autoload -Uz compinit && compinit
  autoload -U bashcompinit && bashcompinit
fi

## Load aliases
source_if_exists "${HOME}/.aliases"

## Enable asdf version manager
source_homebrew_file "opt/asdf/libexec/asdf.sh"

## Load custom prompt
source_if_exists "${HOME}/.zprompt.zsh"
