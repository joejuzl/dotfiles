#!/usr/bin/env bash

if test ! $(which brew)
then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo 'Homebrew already installed...'
fi

brew tap farmotive/k8s