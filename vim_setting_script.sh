#.initfileの中の.vimrcを参照するシンボリックリンク作成
ln -s $PWD/.vimrc ../.vimrc
#.initfileの中の.vimを参照するシンボリックリンク作成
ln -s $PWD/.vim ../.vim
#javacomplete.vim用
#.initfileの中の.vimを参照するシンボリックリンク作成
ln -s $PWD/.vim/autoload/Reflection.class ../Reflection.class
