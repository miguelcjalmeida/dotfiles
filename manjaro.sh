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
sudo chsh -s /bin/zsh

#set up i3
sudo rm $HOME/.i3/config
sudo ln /dotfiles/i3/config $HOME/.i3/config

#set up fonts 
cd $HOME
sudo wget https://github.com/be5invis/Iosevka/releases/download/v1.10.0/01.iosevka-1.10.0.zip
cd /usr/share/fonts
sudo mkdir iosevka 
cd iosevka 
sudo mv $HOME/01.iosevka-1.10.0.zip .
sudo unzip 01.iosevka-1.10.0.zip

#set up xresources
rm $HOME/.Xresources
sudo ln /dotfiles/Xresources/.Xresources $HOME/.Xresources
