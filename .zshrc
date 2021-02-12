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

typeset -g ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE='20'

setopt inc_append_history
setopt share_history
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
alias v='nvim'
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
alias tb='tabview'

export VISUAL=nvim
export FRINGE_PACKAGE=test
export EMUL_PACKAGE=test

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export PATH=$HOME/eagle:$PATH
export PATH=/opt/cisco/anyconnect/bin:$PATH
export PATH=/cad/synopsys/pts/M-2017.06-SP3/bin:/cad/synopsys/icc/M-2016.12-SP2/bin:/cad/synopsys/dc_shell/latest/bin:/cad/synopsys/vcs/K-2015.09-SP2-7/bin:$PATH

export LM_LICENSE_FILE=7195@cadlic0.stanford.edu:27000@cadlic0.stanford.edu:$LM_LICENSE_FILE

export VCS_HOME=/cad/synopsys/vcs/K-2015.09-SP2-7
export PATH=$HOME/go/bin:$VCS_HOME/amd64/bin:$PATH
#export PATH=$HOME/.linuxbrew/bin:$PATH
export PIR_HOME=$HOME/pir
export SPATIAL_HOME=$HOME/spatial-lang
export TEST_DATA_HOME=/home/mattfel/test-data/
export PLASTICINE_HOME=$HOME/plasticine
export _JAVA_OPTIONS="-Xmx32g -Xss8912k -Xms16g"

export XILINX_VIVADO=/opt/Xilinx/Vivado/2017.1
export PATH=$XILINX_VIVADO/bin:$PATH
export PATH=$HOME/firrtl/utils/bin:$PATH
export PATH=$HOME/sbt/bin:$PATH
alias zycp='scp $(basename $(pwd)).tar.gz mvilim@holodeck-zc706:'
alias zynq='ssh mvilim@holodeck-zc706'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_COMPLETION_TRIGGER=''
bindkey '^T' fzf-completion
bindkey '^I' $fzf_default_completion

export FZF_DEFAULT_COMMAND="fd --type f --hidden -I --exclude ".git""
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd --type d --hidden -I --exclude ".git""

_fzf_compgen_path() {
  fd --type f --hidden -I --exclude ".git" . "$1"
}

_fzf_compgen_dir() {
  fd --type d --hidden -I --exclude ".git" . "$1"
}

_gen_fzf_default_opts() {

local color0='#0e293f'
local color1='#011627'
local color2='#21c7a8'
local color3='#f78c6c'
local color4='#a1aab8'
local color5='#092236'
local color6='#ecc48d'
local color7='#ff5874'
local color8='#f78c6c'
local color9='#d6deeb'
local color10='#2c3043'
local color11='#f78c6c'

export FZF_DEFAULT_OPTS="
  --color=bg+:$color0,bg:$color1,spinner:$color2,hl:$color3
  --color=fg:$color4,header:$color5,info:$color6,pointer:$color7
  --color=marker:$color8,fg+:$color9,prompt:$color10,hl+:$color11
"

}

_gen_fzf_default_opts

export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig

alias e="TERM=xterm-24bits emacsclient -a '' -nw"
alias ekill="emacsclient -e '(kill-emacs)'"
