ZSH_THEME="pygmalion"
export ZSH="/home/mvilim/.oh-my-zsh"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

setopt histignorealldups sharehistory

bindkey -v

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

alias h='ls'
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

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
