autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

bindkey -v

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

alias h='exa --long'
alias v='vim'
alias g='git'
alias c='cd'
alias less='less -R'
alias vpn='sudo openconnect su-vpn.stanford.edu'
alias sleep='sudo pm-suspend'
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'

export VISUAL=vim
export FRINGE_PACKAGE=test

export PATH=$HOME/.local/bin:$HOME/.cargo/bin:$PATH
export PATH=/opt/cisco/anyconnect/bin:$PATH
export PATH=/cad/synopsys/pts/M-2017.06-SP3/bin:/cad/synopsys/icc/M-2016.12-SP2/bin:/cad/synopsys/dc_shell/latest/bin:$PATH
export VCS_HOME=/cad/synopsys/vcs/K-2015.09-SP2-7

export LM_LICENSE_FILE=7195@cadlic0.stanford.edu:27000@cadlic0.stanford.edu:$LM_LICENSE_FILE

export VCS_HOME=/cad/synopsys/vcs/K-2015.09-SP2-7
export PATH=$HOME/sbt/bin:$VCS_HOME/amd64/bin:$PATH
export PIR_HOME=$HOME/pir
export SPATIAL_HOME=$HOME/spatial-lang
export PLASTICINE_HOME=$HOME/plasticine
export _JAVA_OPTIONS="-Xmx32g -Xss8912k -Xms16g"

export XILINX_VIVADO=/opt/Xilinx/Vivado/2017.1
export PATH=$XILINX_VIVADO/bin:$PATH
alias zycp='scp $(basename $(pwd)).tar.gz mvilim@holodeck-zc706:'
alias zynq='ssh mvilim@holodeck-zc706'

source "/home/mvilim/.fzf/shell/key-bindings.zsh"

export FZF_DEFAULT_COMMAND='fd . '\$dir' --type f -I'
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND
export FZF_ALT_C_COMMAND='fd . '\$dir' --type d -I'

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

inputcolor="[0;38m";
usercolor="[0;32m";
hostcolor="[0;35m";
cwdcolor='[0;34m'
gitcolor='[1;31m'
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
PS1='\[\e${usercolor}\]\u@\[\e${hostcolor}\]\h \[\e${cwdcolor}\]\W\[\e${gitcolor}\]$(git_branch)\[\e${inputcolor}\]\$ '

