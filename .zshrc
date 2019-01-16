if [[ ! -d ~/.zplug ]]; then
  git clone https://github.com/zplug/zplug ~/.zplug
  source ~/.zplug/init.zsh && zplug update --self
fi

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  else
    echo
  fi
fi

zplug load

setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP

setopt auto_menu

bindkey -v
autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

KEYTIMEOUT=1

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2 eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -oid,%cpu,tty,cputime,cmd'

alias h='exa --color=always --long -F'
alias rg='rg -S --color=always --pretty'
alias hh='h -a'
alias v='vim'
alias g='git'
alias ..='cd ..'
alias less='less -R'
alias vpn='sudo openconnect su-vpn.stanford.edu'
alias sleep='sudo pm-suspend'
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'
alias less='less -R'
alias -g l='| less'
alias tn='tmux new'
alias ta='tmux attach'

export VISUAL=vim
export FRINGE_PACKAGE=test

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export PATH=/opt/cisco/anyconnect/bin:$PATH
export PATH=/cad/synopsys/pts/M-2017.06-SP3/bin:/cad/synopsys/icc/M-2016.12-SP2/bin:/cad/synopsys/dc_shell/latest/bin:$PATH
export VCS_HOME=/cad/synopsys/vcs/K-2015.09-SP2-7

export LM_LICENSE_FILE=7195@cadlic0.stanford.edu:27000@cadlic0.stanford.edu:$LM_LICENSE_FILE

export VCS_HOME=/cad/synopsys/vcs/K-2015.09-SP2-7
export PATH=$HOME/go/bin:$HOME/sbt/bin:$VCS_HOME/amd64/bin:$PATH
export PIR_HOME=$HOME/pir
export SPATIAL_HOME=$HOME/spatial-lang
export PLASTICINE_HOME=$HOME/plasticine
export _JAVA_OPTIONS="-Xmx32g -Xss8912k -Xms16g"

export XILINX_VIVADO=/opt/Xilinx/Vivado/2017.1
export PATH=$XILINX_VIVADO/bin:$PATH
alias zycp='scp $(basename $(pwd)).tar.gz mvilim@holodeck-zc706:'
alias zynq='ssh mvilim@holodeck-zc706'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion

_fzf_compgen_path() {
  fd --type f --hidden --follow --exclude ".git" . "$1"
}

_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

_gen_fzf_default_opts() {

local color00='#002b36'
local color01='#073642'
local color02='#586e75'
local color03='#657b83'
local color04='#839496'
local color05='#93a1a1'
local color06='#eee8d5'
local color07='#fdf6e3'
local color08='#dc322f'
local color09='#cb4b16'
local color0A='#b58900'
local color0B='#859900'
local color0C='#2aa198'
local color0D='#268bd2'
local color0E='#6c71c4'
local color0F='#d33682'

export FZF_DEFAULT_OPTS="
  --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D
  --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C
  --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D
"

}

_gen_fzf_default_opts

