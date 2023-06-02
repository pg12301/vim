#!/bin/bash

if [ -d $HOME/.vim ]
then
  mv $HOME/.vim $HOME/.vim_bak
fi
if [ -d $HOME/.vimrc ]
then
  mv $HOME/.vimrc $HOME/.vimrc_bak
fi
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp -a vim.conf $HOME/.vimrc
cp -a colors/ $HOME/.vim
