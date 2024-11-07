# zsh - Login shell (run once)
#
# Order of loading:
#   zshenv > zprofile > zshrc > zlogin > zlogout

setopt APPEND_HISTORY

## Keybindings
set -o emacs

### Ctrl+Left / Ctrl+Right
bindkey ";5C" forward-word
bindkey ";5D" backward-word

export PROMPT="%F{yellow}%n@%m%f %F{red}%1~ %#%f "

export PATH="${HOME}/bin:${HOME}/.local/bin:/usr/local/sbin:${PATH}"

## Detect whether we're on an x86 or ARM Mac
## Using `brew --prefix` is too slow
if [[ -d "/opt/homebrew/bin" ]]; then
  export HOMEBREW_PREFIX="/opt/homebrew"
  export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:${PATH}"
else
  export HOMEBREW_PREFIX="/usr/local"
fi
