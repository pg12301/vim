#!/bin/bash

mv ~/.vimrc ~/.vimrc_bak
mv ~/.vim ~/.vim_bak
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle/
git clone https://github.com/chxuan/change-colorscheme
git clone https://github.com/chxuan/vim-buffer
git clone https://github.com/jiangmiao/auto-pairs
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
git clone https://github.com/Xuyuanp/nerdtree-git-plugin
git clone https://github.com/octol/vim-cpp-enhanced-highlight
git clone https://github.com/vim-airline/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes
git clone https://github.com/terryma/vim-smooth-scroll
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/garbas/vim-snipmate.git
git clone https://github.com/honza/vim-snippets.git
git clone https://github.com/jayli/vim-easycomplete.git
git clone https://github.com/jayli/vim-dictionary.git
cd -
cp -a .vimrc ~/.vimrc
cp -a colors ~/.vim/colors
