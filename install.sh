#!/bin/bash

if [ -d $HOME/.config/nvim ]
then
  mv $HOME/.config/nvim $HOME/.config/nvim_bak
fi
mkdir -p $HOME/.config/nvim/autoload $HOME/.config/nvim/bundle
cp -a pathogen.vim $HOME/.config/nvim/autoload
cd $HOME/.config/nvim/bundle/
git clone https://github.com/Yggdroot/indentLine
git clone https://github.com/chxuan/change-colorscheme
git clone https://github.com/chxuan/vim-buffer
git clone https://github.com/jiangmiao/auto-pairs
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/octol/vim-cpp-enhanced-highlight
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/terryma/vim-smooth-scroll
git clone https://github.com/preservim/nerdcommenter
git clone https://github.com/honza/vim-snippets
git clone https://github.com/jayli/vim-dictionary
git clone https://github.com/preservim/tagbar
git clone https://github.com/luochen1990/rainbow
git clone https://github.com/junegunn/fzf.vim
git clone https://github.com/neoclide/coc.nvim.git
cd -
cp -a init.vim $HOME/.config/nvim/init.vim
cp -a colors $HOME/.config/nvim
