set fish_greeting
set -g fish_key_bindings fish_vi_key_bindings

set -Ux EDITOR vim

set LM_LICENSE_FILE 7195@cadlic0.stanford.edu
set LM_LICENSE_FILE 27000@cadlic0.stanford.edu $LM_LICENSE_FILE
set VCS_HOME /cad/synopsys/vcs/K-2015.09-SP2-7
set PATH $HOME/fish-shell $HOME/sbt/bin $VCS_HOME/amd64/bin $PATH
set PIR_HOME $HOME/pir
set SPATIAL_HOME $HOME/spatial-lang
set PLASTICINE_HOME $HOME/plasticine
set _JAVA_OPTIONS "-Xmx32g -Xss8912k -Xms16g"

set XILINX_VIVADO /opt/Xilinx/Vivado/2017.1
set PATH $XILINX_VIVADO/bin $PATH
#alias zycp 'scp $(basename $(pwd)).tar.gz mvilim@holodeck-zc706:'
alias zynq 'ssh mvilim@holodeck-zc706'

alias vpn 'sudo openconnect su-vpn.stanford.edu'
alias sleep 'sudo pm-suspend'

#set -gx FZF_DEFAULT_COMMAND  'rg --files --no-ignore-vcs --hidden'

function c
  fzf-cd-widget
end

function v
  set file (fzf)
  and vim $file
end

function h
  fzf-history-widget
end

function fish_mode_prompt
end

set __fish_git_prompt_color_branch yellow

function fish_right_prompt
  __fish_git_prompt
end

function fish_user_key_bindings
  fzf_key_bindings
  bind -M insert \cn accept-autosuggestion
end

function fish_prompt --description 'Write out the prompt'
	if test -z $WINDOW
        printf '%s%s@%s%s%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    else
        printf '%s%s@%s%s%s(%s)%s%s%s> ' (set_color yellow) (whoami) (set_color purple) (prompt_hostname) (set_color white) (echo $WINDOW) (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
    end
end
