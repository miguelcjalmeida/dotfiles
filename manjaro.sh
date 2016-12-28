#set up dependencies
sudo pacman -S git
sudo pacman -S zsh

sudo mkdir /git
sudo cd /git
sudo git clone https://github.com/miguelcjalmeida/dotfiles

#set up dotfiles
sudo ln -s /git/dotfiles /.

#set up git 
sudo ln /dotfiles/git/.gitconfig $HOME/.gitconfig

#set up vim
sudo ln -s /dotfiles/vim $HOME
sudo mv $HOME/vim $HOME/.vim
sudo ln /dotfiles/vim/.vimrc $HOME/.vimrc

#set up zsh
cd /dotfiles
sudo git clone https://github.com/robbyrussell/oh-my-zsh
sudo ln /dotfiles/zsh/.zshrc $HOME/.zshrc

chsh -s /urs/bin/zsh

#set up i3
sudo rm $HOME/.i3/config
sudo ln /dotfiles/i3/config $HOME/.i3/config

