ze () {
  zeus "$@"
  if [ $? -eq 143 ]; then
    reset
    echo '########################################################'
    echo 'Zeus error caught, terminal has been reset and now retrying the command...'
    ze "$@"
  fi
}
