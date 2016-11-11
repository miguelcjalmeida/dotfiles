#!/bin/bash

rm ~/config -r
rm ~/.vim/autoload -r
rm ~/.vimrc

ln -s c:/dev/dotfiles/vim/config ~/config
ln -s c:/dev/dotfiles/vim/autoload ~/.vim/autoload
ln -s c:/dev/dotfiles/vim/.vimrc ~/.vimrc
