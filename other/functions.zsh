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
    reset
    echo '########################################################'
    echo 'Zeus error caught, terminal has been reset and now retrying the command...'
    ze "$@"
  fi
}
