dir=~/dotfiles
files="git-prompt.sh .bashrc .bash_profile .dir_colors .ctags .gitconfig .inputrc .tmux.conf .vimrc .xinitrc .Xmodmap .config/fish/config.fish .config/alacritty/alacritty.yml .config/i3/config .config/i3/i3status.conf .config/redshift.conf"

for file in $files; do
  ln -sf ~/dotfiles/$file ~/$file
done
