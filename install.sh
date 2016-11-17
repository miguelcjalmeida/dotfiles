#!/bin/bash
UNAME=`uname -o`
CYGWIN_UNAME="Cygwin"
CYGWIN_DEV_PATH="/cygdrive/c/dev"
CYGWIN_DEV_FOLDER_NAME="dev"
CYGWIN_PATH="/cygdrive/c/cygwin64"

#install apt-cyg
lynx -source rawgit.com/transcode-open/apt-cyg/master/apt-cyg > apt-cyg
install apt-cyg /bin

#install packages
apt-cyg install vim
apt-cyg install zsh
apt-cyg install git
apt-cyg install wget
apt-cyg install curl

#create my /git/ folder for development
if [ "$UNAME" == "$CYGWIN_UNAME" ]; then
  ln -s $CYGWIN_DEV_PATH ~/
  mv ~/$CYGWIN_DEV_FOLDER_NAME ~/git
  mv ~/git /
else
  mkdir /git/
fi

#git clone my dotfiles folder
git clone https://github.com/miguelcjalmeida/dotfiles /git/dotfiles
ln -s /git/dotfiles/ /

#configuring zsh
git clone https://github.com/robbyrussell/oh-my-zsh /usr/share/oh-my-zsh
ln -s /git/dotfiles/zsh/.zshrc ~/

git clone https://github.com/powerline/fonts /git/fonts/
bash /git/fonts/install.sh

#configuring vim
ln -s /git/dotfiles/vim/.vimrc ~/
mkdir ~/.vim
ln -s /git/dotfiles/vim/autoload ~/.vim/
ln -s /git/dotfiles/vim/config ~/.vim/

#configuring mintty with solarized
ln -s /git/dotfiles/mintty/.minttyrc ~/

#git
ln -s /git/dotfiles/git/.gitconfig ~/

#cygwin notes
echo "-------- STEPS -------"
echo "1 - install Powerline fonts from .local"
echo "2 - configure cygwin 256-colors, font, locale (en_US.UTF-8)"  


