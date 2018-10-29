export HISTCONTROL=ignoredups:erasedups
shopt -s histappend
export HISTSIZE=100000
export HISTFILESIZE=100000
export PROMPT_COMMAND='history -a'

alias ls='ls -1 --color=auto --group-directories-first'
alias less='less -R'
alias grep='grep --color=auto --exclude=tags'
alias vpn='sudo openconnect su-vpn.stanford.edu'
alias sleep='sudo pm-suspend'
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'
alias v='vim'
alias g='git'

export VISUAL=vim

source ~/git-prompt.sh
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

export PATH=$HOME/.local/bin:$PATH
export PATH=/opt/cisco/anyconnect/bin:$PATH
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

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_COMPLETION_TRIGGER=''
export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

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
