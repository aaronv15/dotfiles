# Lines configured by zsh-newuser-install
HISTFILE="$HOME/.local/share/zsh/.histfile"
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "~/.zshrc"

autoload -Uz compinit
compinit -d "~/.local/share/zsh/.zcompdump"
# End of lines added by compinstall

# Make sure histfile dir exists
mkdir -p "$(dirname $HISTFILE)"

setopt APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS

setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME
unsetopt SHARE_HISTORY

# Prompt
autoload -Uz colors && colors

alias cls='clear'
alias please='sudo'
alias pls='sudo'

alias l="eza -l"
alias la="eza -la"

alias tmain="tmux new -As main"

alias refresh="source ~/.zshrc"
alias zedit="nvim ~/.zshrc"
alias vedit="cd ~/.config/nvim/; nvim ~/.config/nvim/init.lua"

alias worst=". ~/Scripts/worst-runner.bash"
alias clip="wl-copy"

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export EDITOR=nvim
PATH="$PATH:$HOME/.cargo/bin"
