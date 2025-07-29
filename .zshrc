# Global options
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt autocd
unsetopt beep
bindkey -e
zstyle :compinstall filename '/home/omni/.zshrc'
autoload -Uz compinit
compinit

PS1="%F{6}»%F{6} %~ %k%f"

# Environment variables
export EDITOR="nvim"
export GOPATH="$HOME/go"
export DESKTOP="$HOME/Desktop/"
export PATH="$GOPATH/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# Aliases
alias c="clear"
alias cat="batcat"
# alias cat="bat"
alias config="$EDITOR $HOME/.zshrc"
alias cp="cp -v"
alias mv="mv -v"
alias f="fz"
alias ls="ls --color=auto"
alias ll="ls -l"
alias la="ls -a"
alias v="$EDITOR"
alias grep="grep -n --color=always"
# alias help="slides $HOME/.config/help.md"
alias info="fastfetch"
alias reload="source ~/.zshrc"
alias stow="stow --dotfiles"

# FZF (fz)
fz() {
  while true; do
    local file
    file=$(fzf -i -m)
    if [[ -n "$file" ]]; then
      $EDITOR "$file"
    else
      break
    fi
  done
}
