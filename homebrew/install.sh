#!/usr/bin/env bash

if test ! $(which brew)
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  echo 'Homebrew already installed...'
fi

brew tap farmotive/k8s
