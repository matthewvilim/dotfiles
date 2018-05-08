# Set up the prompt
autoload -Uz promptinit
promptinit
prompt redhat 

setopt histignorealldups

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -v
export KEYTIMEOUT=1

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
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
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Za-z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

setopt prompt_subst
. ~/git-prompt.sh
export RPROMPT=$'$(__git_ps1 "%s")'

setopt rm_star_wait
setopt correct
setopt autocd
unsetopt listambiguous
setopt globdots

export PATH=/opt/cisco/anyconnect/bin:$PATH
export VCS_HOME=/cad/synopsys/vcs/K-2015.09-SP2-7
export LM_LICENSE_FILE=27000@cadlic0.stanford.edu:$LM_LICENSE_FILE

eval `dircolors $HOME/.dir_colors`
alias ls='ls -1 -A --color=always --group-directories-first'
alias less='less -R'
alias grep='grep --color=always --exclude=tags'
alias vpn='sudo openconnect su-vpn.stanford.edu'
alias sleep='sudo pm-suspend'
alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'
export VISUAL=vim
export EDITOR="$VISUAL"

export LM_LICENSE_FILE=7195@cadlic0.stanford.edu
export LM_LICENSE_FILE=27000@cadlic0.stanford.edu:$LM_LICENSE_FILE
export VCS_HOME=/cad/synopsys/vcs/K-2015.09-SP2-7
export PATH=$HOME/sbt/bin:$VCS_HOME/amd64/bin:$PATH
export PIR_HOME=$HOME/pir
export SPATIAL_HOME=$HOME/spatial-lang
export PLASTICINE_HOME=$HOME/plasticine
export _JAVA_OPTIONS="-Xmx32g -Xss8912k -Xms16g"

chpwd() ls

export CLOCK_FREQ_MHZ='100'
export XILINX_VIVADO=/opt/Xilinx/Vivado/2017.1
export PATH=$PATH:$XILINX_VIVADO/bin
#source $XILINX_VIVADO/settings64.sh
alias zycp='scp $(basename $(pwd)).tar.gz mvilim@holodeck-zc706:'
alias zynq='ssh mvilim@holodeck-zc706'
