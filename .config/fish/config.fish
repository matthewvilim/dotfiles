set fish_greeting
set -g fish_key_bindings fish_vi_key_bindings

function fish_user_key_bindings
  bind -M insert \cn forward-char
  bind df begin-selection forward-jump forward-char kill-selection end-selection backward-char
  bind dt begin-selection forward-jump kill-selection end-selection
  bind dF begin-selection backward-jump kill-selection end-selection
  bind dT begin-selection backward-jump forward-char kill-selection end-selection
  bind -m insert cf begin-selection forward-jump forward-char kill-selection end-selection backward-char force-repaint
  bind -m insert ct begin-selection forward-jump kill-selection end-selection force-repaint
  bind -m insert cF begin-selection backward-jump kill-selection end-selection force-repaint
  bind -m insert cT begin-selection backward-jump forward-char kill-selection end-selection force-repaint
end

set -Ux EDITOR vim
