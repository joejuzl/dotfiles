remove_long_history() {
  sed -i -n '/.\{200\}/d' ~/.zsh_history
}

cdf() {
  cd `ls | fzf`
}

ask() {
  read "REPLY?Are you sure? "
  [[ $REPLY =~ ^[Yy]$ ]]
}

ze () {
  zeus "$@"
  if [ $? -eq 143 ]; then
    echo '########################################################'
    echo 'Caught a zeus error, reseting TERM and retrying...'
    export TERM=xterm
    zeus "$@"
  fi
}
