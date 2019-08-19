dir=~/dotfiles
files=".bash_aliases .gdbinit .gitconfig .inputrc .xinitrc .config/alacritty/alacritty.yml .config/i3/config .config/i3/i3status.conf .config/redshift.conf"

for file in $files; do
  ln -sf ~/dotfiles/$file ~/$file
done

tic -x -o ~/.terminfo terminfo-24bit.src
