# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/langs/zig"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:/opt/nvim-linux-x86_64/bin"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export VISUAL="nvim"
export EDITOR="$VISUAL"

# bindkey -v

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="rkj"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="false"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd.mm.yyyy"
HISTFILE="$(readlink -e "~/.zsh_history")"
SAVEHIST=9000
HISTSIZE=9999

setopt APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS

setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY_TIME
# unsetopt INC_APPEND_HISTORY

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#

# Vi-mode config
VI_MODE_SET_CURSOR=true
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=false

plugins=(git themes z vi-mode)

source $ZSH/oh-my-zsh.sh
unsetopt SHARE_HISTORY

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

VIRTUAL_ENV_DISABLE_PROMPT=true

source ~/scripts/aenv/aenv.bash

alias bat='batcat'
# This is not the greatest alias as there is a python launcher called py.
# So if I ever install that, remove this alias
alias py='python3'

alias cls='clear'
alias please='sudo'
alias pls='sudo'

alias nvim-nolsp="nvim --cmd \"let g:lsp_disabled = v:true\""

alias untor="python3 ~/scripts/untor.py"
alias add-book="python3 ~/scripts/add_book.py"
alias timer="~/scripts/timer.sh"
alias nt="~/scripts/templates/template-gen.sh"
alias worst=". ~/scripts/worst-runner.bash"

alias refresh="source ~/.zshrc"
alias zedit="nvim ~/.zshrc"
alias vedit="cd ~/.config/nvim/; nvim ~/.config/nvim/init.lua"

alias tmain="tmux new -As main"
alias tbook="tmux new -As book"

alias clip="xclip -sel clip"
alias run-build="make build; ./build"
alias deno="~/Documents/js/deno"

alias maths="~/Documents/alevels/maths/open.sh"

[ -f "/home/aaron/.ghcup/env" ] && . "/home/aaron/.ghcup/env" # ghcup-env
. "$HOME/.local/bin/env"
