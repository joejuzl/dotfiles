#!/usr/bin/env bash

if [ -e '/Users/joejuzl/.vim/bundle/Vundle.vim' ]
then
  echo 'Vundle already installed...'
else
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall
