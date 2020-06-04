#!/bin/bash

if [ -d $HOME/.config/nvim ]
then
  mv ~/.config/nvim $HOME/.config/nvim_bak
fi
mkdir -p $HOME/.config/nvim/autoload $HOME/.config/nvim/bundle
curl -LSso $HOME/.config/nvim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd $HOME/.config/nvim/bundle/
git clone https://github.com/Yggdroot/indentLine.git
git clone https://github.com/chxuan/change-colorscheme
git clone https://github.com/chxuan/vim-buffer
git clone https://github.com/jiangmiao/auto-pairs
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/octol/vim-cpp-enhanced-highlight
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/terryma/vim-smooth-scroll
git clone https://github.com/preservim/nerdcommenter.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/jayli/vim-dictionary.git
git clone https://github.com/preservim/tagbar.git
git clone https://github.com/luochen1990/rainbow.git
cd -
cp -a init.vim $HOME/.config/nvim/init.vim
cp -a colors $HOME.config/nvim/colors
