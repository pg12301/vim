#!/bin/bash

if [ -d $HOME/.config/nvim ]
then
  mv $HOME/.config/nvim $HOME/.config/nvim_bak
fi
mkdir -p $HOME/.config/nvim/autoload $HOME/.config/nvim/bundle
cp -a pathogen.vim $HOME/.config/nvim/autoload
cd $HOME/.config/nvim/bundle/
git clone git://github.com/Yggdroot/indentLine.git
git clone git://github.com/chxuan/change-colorscheme
git clone git://github.com/chxuan/vim-buffer
git clone git://github.com/jiangmiao/auto-pairs
git clone git://github.com/scrooloose/nerdtree
git clone git://github.com/octol/vim-cpp-enhanced-highlight
git clone git://github.com/vim-airline/vim-airline
git clone git://github.com/vim-airline/vim-airline-themes
git clone git://github.com/terryma/vim-smooth-scroll
git clone git://github.com/preservim/nerdcommenter.git
git clone git://github.com/honza/vim-snippets.git
git clone git://github.com/jayli/vim-dictionary.git
git clone git://github.com/preservim/tagbar.git
git clone git://github.com/luochen1990/rainbow.git
cd -
cp -a init.vim $HOME/.config/nvim/init.vim
cp -a colors $HOME/.config/nvim
