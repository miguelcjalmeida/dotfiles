#set up dependencies
pacman -S git
pacman -S zsh

mkdir /git
cd /git
git clone https://github.com/miguelcjalmeida/dotfiles

#set up dotfiles
ln -s /git/dotfiles /.

#set up git 
ln -s /dotfiles/git/.gitconfig $HOME

#set up vim
ln -s /dotfiles/vim $HOME
mv $HOME/vim $HOME/.vim
ln -s /dotfiles/vim/.vimrc $HOME

#set up zsh 
cd /dotfiles
git clone https://github.com/robbyrussell/oh-my-zsh
ln -s /dotfiles/zsh/.zshrc $HOME

