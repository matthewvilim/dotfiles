dir=~/dotfiles
files=".config/nvim/init.vim .config/nvim/coc-settings.json"

for file in $files; do
  ln -sf ~/dotfiles/$file ~/$file
done

tic -x -o ~/.terminfo terminfo-24bit.src
