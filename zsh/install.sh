#!/usr/bin/env bash

if [ -e ~/.oh-my-zsh ]
then
    echo 'Already installed oh-my-zsh'
else
    # install oh-my-zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    # revert the change to .zshrc
    mv ~/.zshrc ~/.zshrc.oh-my-zsh-unused
    mv ~/.zshrc.pre-oh-my-zsh ~/.zshrc
fi
