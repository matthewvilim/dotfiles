dir=~/dotfiles
files=".bashrc .bash_profile .ctags .gitconfig .inputrc .tmux.conf .vimrc .xinitrc .Xmodmap .config/fish/config.fish .config/alacritty/alacritty.yml .config/i3/config .config/i3/i3status.conf .config/redshift.conf"

for file in $files; do
  ln -sf ~/dotfiles/$file ~/$file
done
