set -Ux EDITOR vim

set -gx PATH $HOME/.local/bin $PATH
set -gx PATH $HOME/.cargo/bin $PATH

set -gx LM_LICENSE_FILE 7195@cadlic0.stanford.edu
set -gx LM_LICENSE_FILE 27000@cadlic0.stanford.edu:$LM_LICENSE_FILE
set -gx VCS_HOME /cad/synopsys/vcs/K-2015.09-SP2-7
set -gx PIR_HOME $HOME/pir
set -gx SPATIAL_HOME $HOME/spatial-lang
set -gx PLASTICINE_HOME $HOME/plasticine
set -gx _JAVA_OPTIONS "-Xmx32g -Xss8912k -Xms16g"

#set -gx PATH $HOME/fish-shell $PATH
#set -gx PATH $HOME/sbt/bin $PATH
#set -gx PATH $VCS_HOME/amd64/bin $PATH
#set -gx PATH /opt/Xilinx/Vivado/2017.1/bin $PATH

#alias zycp 'scp $(basename $(pwd)).tar.gz mvilim@holodeck-zc706:'
alias zynq 'ssh mvilim@holodeck-zc706'

alias vpn 'sudo openconnect su-vpn.stanford.edu'
alias sleep 'sudo pm-suspend'
alias cp 'cp -i'
alias mv 'mv -i'
alias rg 'rg -p'
alias less 'less -R'
abbr h 'ls'
abbr hh 'ls -l'
abbr g 'git'
abbr v 'vim'
abbr c 'cd'

set fish_greeting

function fish_mode_prompt
end

set __fish_git_prompt_color_branch yellow

function fish_right_prompt
  __fish_git_prompt
end

function fish_user_key_bindings
  fish_vi_key_bindings
  fzf_key_bindings
  bind -M insert \cn accept-autosuggestion
  bind -M default v edit_command_buffer
end

function fish_prompt --description 'Write out the prompt'
	if test -z $WINDOW
        printf '%s%s@%s%s%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    else
        printf '%s%s@%s%s%s(%s)%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color white) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    end
end

set -gx FZF_DEFAULT_COMMAND 'fd . '\$dir' --type f -I'
set -gx FZF_CTRL_T_COMMAND $FZF_DEFAULT_COMMAND
set -gx FZF_ALT_C_COMMAND 'fd . '\$dir' --type d -I'

set -l color00 '#002b36'
set -l color01 '#073642'
set -l color02 '#586e75'
set -l color03 '#657b83'
set -l color04 '#839496'
set -l color05 '#93a1a1'
set -l color06 '#eee8d5'
set -l color07 '#fdf6e3'
set -l color08 '#dc322f'
set -l color09 '#cb4b16'
set -l color0A '#b58900'
set -l color0B '#859900'
set -l color0C '#2aa198'
set -l color0D '#268bd2'
set -l color0E '#6c71c4'
set -l color0F '#d33682'

set -Ux FZF_DEFAULT_OPTS "
  --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D
  --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C
  --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D
"
