alias ls='ls -1 --color=always --group-directories-first'
alias less='less -R'
alias grep='grep --color=always --exclude=tags'
alias vpn='sudo openconnect su-vpn.stanford.edu'
alias sleep='sudo pm-suspend'
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'

export VISUAL=vim

. ~/git-prompt.sh

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
