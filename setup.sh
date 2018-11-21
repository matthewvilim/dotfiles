dir=~/dotfiles
files=".zshrc .ctags .gitconfig .inputrc .tmux.conf .vimrc .xinitrc .Xmodmap .config/alacritty/alacritty.yml .config/i3/config .config/i3/i3status.conf .config/redshift.conf"

for file in $files; do
  ln -sf ~/dotfiles/$file ~/$file
done
